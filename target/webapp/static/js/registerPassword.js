var RegisterPasswordView = Backbone.View.extend({

    el : $('#registerPassword'),

    events : {
        'click .register-password-button' : 'registerPass'
    },

    initialize : function() {
        this.email = this.options.email;
        this.key = this.options.key;
    },

    registerPass : function() {
        if(this.validForm()) {
            var data = this.getDataForm();
            this.registerAjax(data);
        }
    },

    registerAjax : function(data) {
        var that = this;
        Utils.disableScreen();
        $.ajax({
            type: 'POST',
            url: '/users/'+that.email+'/pass?key=' + that.key,
            contentType: 'application/json',
            data: JSON.stringify(data)
        }).done(function(xhr){
            window.location.href = "/delivery/form";
        }).fail(function(err, textStatus){
            that.cleanForm();
            Utils.enableScreen();
            switch(err.status) {
                case 404 : $('.msj-form').html("<span class='alert alert-error'>Ocurrió un error, intente nuevamente.</span>");
                           break;
                case 500 : $('.msj-form').html("<span class='alert alert-error'>Ocurrió un error al intentar registrar la contraseña: " + textStatus + "</span>");
                           break;
            }
        });
    },

    validForm : function() {
        var password = $("#password", this.$el).val();
        var emptyPass = password.length == 0;

        if(emptyPass) {
            $("#msjpass").html("<span class='alert alert-error'>La contraseña no debe estar vacía</span>");
        } else {
            $("#msjpass").html("");
        }

        var repassword = $("#repassword", this.$el).val();
        var emptyRepass = repassword.length == 0;

        if(emptyRepass) {
            $("#msjrepass").html("<span class='alert alert-error'>Debe volver a ingresar la contraseña</span>");
        } else {
            $("#msjrepass").html('');
        }

        var res = false;

        if(!emptyPass && !emptyRepass) {
            if(password == repassword) {
                res = true;
            } else {
                $('.msj-form').html("<span class='alert alert-error'>Las contraseñas no coinciden</span>");
            }
        }

        return res; 
    },

    getDataForm : function() {
        var data = {
            password : $("#password", this.$el).val(),
            repassword : $("#repassword", this.$el).val()
        };

        return data;
    },

    cleanForm : function() {
        $("#password", this.$el).val("");
        $("#repassword", this.$el).val("");
    }    
});