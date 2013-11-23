var AssingForm = Backbone.View.extend({
    
    el : $('#assign-credits'),

    events : {
        'click .send-button' : 'send'
    },

    send : function() {
        if(this.validForm()) {
            var data = this.getData();
            this.sendAjax(data);
        } else {
            alert('Datos invalidos');
        }
    },

    sendAjax : function(data) {
        Utils.disableScreen();
        var that = this;
        $.ajax({
            type: 'POST',
            url: '/manage-credits',
            contentType: 'application/json',
            data: JSON.stringify(data)
        }).done(function(data){
            alert('creditos asignados satisfactoriamente');
        }).fail(function(data){
            if(data.status == 400) {
                $("#alert-center").html('Datos inválidos');
                scrollTop();
            } else {
                $("#alert-center").html('Ocurrió un error interno al intentar procesar el envío');
                scrollTop();
            }
        }).always(function(){
            Utils.enableScreen();
        });
    },

    validForm : function() {
        var owner = $('#account-owner').val();
        var credits = $('#credits-to-assign').val();
        return owner.length > 0 && credits.length > 0;
    },

    getData : function() {
        return {
            owner : $('#account-owner').val(),
            credits : $('#credits-to-assign').val()
        };
    }

});