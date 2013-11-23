var LoginView = Backbone.View.extend({

    el : $('#login'),

    events : {
        'submit' : 'login'
    },

    initialize : function() {
    },

    login : function() {
        if(this.validForm()) {
            var data = this.getDataForm();
            this.loginAjax(data);
        }
    },

    loginAjax : function(data) {
        $.ajax({
            type: 'POST',
            url: '/login',
            contentType: 'application/json',
            data: JSON.stringify(data),
            beforeSend: function(jqXHR, settings) {
                Utils.disableScreen();
            }
        }).done(function(xhr) {
            window.location.href =  "/delivery/form";
        }).fail(function(){
            Utils.enableScreen();
            $('.msj-form').html("<div class='alert alert-error'>Verifique que su usuario y contraseña sean correctos</div>");
        });
    },
    
    validForm : function() {
        var email = $('#email', this.$el).val();
        var isValidEmail = Utils.isValidEmail(email);

        if(!isValidEmail) {
            $("#msjcorreo").html("<span class='alert alert-error'>Ingrese un correo válido</span>");
        } else {
            $("#msjcorreo").html(" ");
        }

        var password = $('#password', this.$el).val();4
        var emptyPass = password.length == 0;

        if(emptyPass) {
            $("#msjpass").html("<span class='alert alert-error'>La contraseña no debe ser vacía</span>");
        } else {
            $("#msjpass").html(" ");
        }

        return isValidEmail && !emptyPass;
    },

    getDataForm : function() {
        var data = {
            email : $('#email', this.$el).val(),
            password : $('#password', this.$el).val()
        };

        return data;
    }
});