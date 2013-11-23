var DeliveryForm = Backbone.View.extend({
    
    el : $('#formCall'),

    events : {
        'click .source' : 'source',
        'click .send-button' : 'send'
    },

    initialize : function() {
        this.type = "string-sound";
        this.uploadAudio = new UploadAudio();
    },

    send : function() {
        if(this.validForm()) {
            var data = this.getData();
            this.sendAjax(data);
            $("#alert-center").html('');
        } else {
            $("#alert-center").html('Campos Inválidos');
            scrollTop();
        }
    },

    source : function(ev) {
        var source = $(ev.target).attr('type');
        if(source == 'audio'){
            this.type = "string-sound";
            $('.audio').show();
            $('.tts').hide();
        }else{
            this.type = "string-tts";
            $('.audio').hide();
            $('.tts').show();
        }
    },

    sendAjax : function(data) {
        Utils.disableScreen();
        var that = this;
        $.ajax({
            type: 'POST',
            url: '/delivery',
            contentType: 'application/json',
            data: JSON.stringify(data)
        }).done(function(data){
            $("#alert-center").html('');
            that.requestTracingDelivery(data.id);
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
        var to = $('#numbersCall', this.$el).val();
        if(to.length == 0) {
            return false;
        }

        /**if (this.type == "string-tts") {
            return this.validStringTTS();
        }
        if (this.type == "string-sound") {**/
            return this.validStringSound();
        /**}
        return false;**/
    },

    validStringTTS : function() {
        var text = $('.tts-field', this.$el).val();
        if(text.length == 0) {
            return false;
        }

        return true;
    },

    validStringSound : function() {
        /**if (!App.fileAudioLoaded) {
            console.log('Error - file upload');
            return false;
        }**/
        return true;
    },

    getData : function() {
        var data = {
            to : $('#numbersCall', this.$el).val(),
            type : this.type
        }

        if (this.type == "string-tts") {
            data.text = $('.tts-field', this.$el).val();
        }

        var subject = $('.subject-field', this.$el).val();
        if(subject.length > 0) {
            data.subject = subject;
        }

        return data;
    },

    requestTracingDelivery : function(idDelivery) {
        window.location.href =  "/delivery/" + idDelivery;
    }
});