var ForgotPasswordView = Backbone.View.extend({

    el : $('#forgot-password'),

    events : {
        'submit' : 'forgotPassword'
    },

    initialize : function() {
    },

    forgotPassword : function() {
        if(this.validForm()) {
            var data = this.getDataForm();
            this.loginAjax(data);
        }
    },

    loginAjax : function(data) {
        var that = this;
        $.ajax({
            type: 'POST',
            url: '/user/' + data.email + '/forgot-password ',
            contentType: 'application/json',
            data: JSON.stringify(data),
            beforeSend: function(jqXHR, settings) {
                Utils.disableScreen();
            }
        }).done(function(xhr) {
            Utils.enableScreen();
            that.cleanForm();
            $('.msj-form').html("<div class='alert alert-sucess'>Su contraseña ha sido enviada al correo ingresado. <a href='/login''>Volver al Login</a>. <br>(Si no recibes el correo, por favor escríbenos a contacto@atartel.com)</div>");
        }).fail(function(err){
            Utils.enableScreen();
            switch(err.status) {
                case 404 : $('.msj-form').html("<div class='alert alert-error'>Correo no registrado</div>");
                           break;
                case 800 : $('.msj-form').html("<div class='alert alert-error'>Ocurrió un error inesperado. Por favor escríbenos a contacto@atartel.com</div>");
                           break;
            }
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

        return isValidEmail;
    },

    getDataForm : function() {
        var data = {
            email : $('#email', this.$el).val()
        };

        return data;
    },

    cleanForm : function() {
        $('#email', this.$el).val('');
    }
});