var events = _.extend({}, Backbone.Events);

var CreditsStatusPoll = Backbone.View.extend({

    el : $('#accountCredits'),

	initialize : function() {
        this.runPolling();
    },

    runPolling : function() {
        var that = this;
        setTimeout(function() {
            that.getCreditsStatus();
        }, 2000);
    },

	getCreditsStatus : function() {
		var that = this;
        $.ajax({
            type: 'GET',
            url: '/account/' + global.accountId,
            dataType : 'json',
            beforeSend : function(xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-Type", "application/json");
            }
        }).done(function(data){
            $('#creditsStatus').html(data.credits);
            that.runPolling();
        }).fail(function(err){
            switch(err.status) {
                case 404 : $("#alert-center").html('Estado de créditos no encontrado para su cuenta'); 
                           scrollTop();
                           break;
                case 500 : $("#alert-center").html("Error al Consultar el Estado de los Créditos de su Cuenta");
                           scrollTop();
                           break;
            }
        });
	}

});

new CreditsStatusPoll();