var events = _.extend({}, Backbone.Events);

var DeliveryShow = Backbone.View.extend({

    el : $('#contentShowDelivery'),

	initialize : function() {
        var that = this;
        this.delivery = this.options.delivery;
        this.runPolling();

        events.on('updateDelivery', function(info) { 
            that.delivery = info;
            $('.delivery-state').removeClass('CREATED');
            $('.delivery-state').removeClass('RUNNING');
            $('.delivery-state').removeClass('FINISHED');
            $('.delivery-state').removeClass('FAILED');
            $('.delivery-state').addClass(info.state);
            $('.delivery-state').html(info.state);
            if (info.state == 'CREATED' || info.state == 'RUNNING') {
                $('.delivery-state').html('En ejecución');
            }
            if (info.state == 'FINISHED') {
                $('.delivery-state').html('Finalizado');
            }
            if (info.state == 'FAILED') {
                $('.delivery-state').html('Fallido'); 
            }

            $('.total').html(info.total);
            $('.success').html(info.success);
            $('.unrealized').html(info.unrealized);
            var calls = info.calls;
            for (var i in calls) {
                var call = calls[i];
                var element = $('#' + call.id);
                var answered = 'No';
                if (call.answered) {
                    answered = 'Si';
                }
                var duration = '';
                if (call.duration) {
                    duration = call.duration;
                }
                if (element.size() == 0) {
                    var html = '<tr id="'+ call.id +'"><td class="to" >' + call.to + '</td><td class="state">' + call.state + '</td><td class="answered">' + answered + '</td><td class="duration">' + duration +'</td></tr>';
                    $('.dataRow').append(html);
                } else {
                    $('.to', element).html(call.to);
                    $('.state', element).html(call.state);
                    $('.answered', element).html(answered);
                    $('.duration', element).html(duration);
                }
            }
        });
	},

    runPolling : function() {
        try {
            if (this.delivery.state != 'FINISHED' && this.delivery.state != 'FAILED') {
                var that = this;
                setTimeout(function() {
                    that.showDeliveryAjax();
                }, 2000);
            }
        } catch (e) { }
    },

	showDeliveryAjax : function() {
		var that = this;
        $.ajax({
            type: 'GET',
            url: '/delivery/' + that.delivery.id,
            dataType : 'json',
            beforeSend : function(xhr) {
                xhr.setRequestHeader("Accept", "application/json");
                xhr.setRequestHeader("Content-Type", "application/json");
            }
        }).done(function(xhr){
            $("#alert-center").html('');
            events.trigger('updateDelivery', xhr);
            //if(xhr.state != 'finished' && xhr.state != 'failed') {
                that.runPolling();
            //}
        }).fail(function(err){
            switch(err.status) {
                case 404 : $("#alert-center").html('Delivery NO Encontrado');
                           scrollTop();
                           break;
                case 500 : $("#alert-center").html("Error al Intentar Seguir un Delivery");
                           scrollTop();
                           break;
            }
        });
	}
});