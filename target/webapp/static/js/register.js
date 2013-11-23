var RegisterView = Backbone.View.extend({

    el : $('#register'),

    events : {
        'click .register-button' : 'register'
    },

    initialize : function() {

    },

    register : function() {
        if(this.validForm()) {
            var data = this.getDataForm();
            this.registerAjax(data);
        }
    },

    registerAjax : function(data) {
        var that = this;

        $.ajax({
            type: 'POST',
            url: '/register',
            contentType: 'application/json',
            data: JSON.stringify(data),
            beforeSend: function(jqXHR, settings) {
                Utils.disableScreen();
            }
        }).done(function(xhr){
            $("#terminos_checkbox").attr('checked', false);
            Utils.enableScreen();
            $('.msj-form').html("<div class='alert alert-sucess'>Registro exitoso. Hemos enviado un correo de activación a <b>" + data.email + "</b>. <br>(Si no recibes el correo, por favor escríbenos a contacto@atartel.com)</div>"); 
            that.cleanForm();                                
        }).fail(function(err){
            Utils.enableScreen();
            switch(err.status) {
                case 409 :  $('.msj-form').html("<div class='alert alert-error'>El usuario ya está registrado</div>");
                            break;
                case 500 :  if(err.code == "error_sending_email") {
                                $('.msj-form').html("<div class='alert alert-error'>Ocurrió un error enviando el correo de activación, contactanos (contacto@atartel.com)</div>");
                            } else {
                                $('.msj-form').html("<div class='alert alert-error'>Error al registrar un usuario</div>");
                            }
                            break;
            }
        });
    },

    validForm : function() {
        var name = $("#name", this.$el).val();
        var emptyName = name.length == 0;
        if(emptyName) {
            $("#msjname").html("<span class='alert alert-error'>El nombre no debe estar vacío</span>");
        } else {
            $("#msjname").html(" ");
        }

        var email = $("#email", this.$el).val();
        var validMail = Utils.isValidEmail(email);
        if(!validMail) {
            $("#msjemail").html("<span class='alert alert-error'>El correo no es válido</span>");
        } else {
            $("#msjemail").html(" ");
        }

        var checkedTerminos = $("#terminos_checkbox").is(':checked');
        if (!checkedTerminos) {
            $("#msjterm").html("<span class='alert alert-error'>Debe aceptar los términos y condiciones</span>");
        }else{
            $("#msjterm").html(" ");
        };
        return (validMail && !emptyName && checkedTerminos);
    },

    getDataForm : function() {
        var data = {
            name : $("#name", this.$el).val(),
            email : $("#email", this.$el).val()
        };

        return data;
    },

    cleanForm : function() {
        $("#name", this.$el).val("");
        $("#email", this.$el).val("");
    }
    
});