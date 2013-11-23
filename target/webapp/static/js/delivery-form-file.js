var App = {};

var DeliveryFormFile = Backbone.View.extend({

    el : $('#form-call-from-file'),

    events : {
        'click .source' : 'source',
        'click .send-button' : 'send'
    },

    initialize : function() {
        console.log($.cookie("file"));
        this.type = "file-sound";
        this.uploadView = new UploadView();
        this.uploadAudio = new UploadAudio();
    },

    send : function() {
        var data = this.buildData();
        this.sendAjax(data);
    },

    source : function(ev) {
        this.type = 'file-sound';
    },

    sendAjax : function(data) {
        Utils.disableScreen();
        $.ajax({
            type: 'POST',
            url: '/delivery',
            contentType: 'application/json',
            data: JSON.stringify(data)
        }).done(function(xhr){
            $("#alert-center").html('');
            window.location.href = "/delivery/" + xhr.id;
        }).fail(function(data){
            if(data.status == 400) {
                $("#alert-center").html('Datos Inválidos');
                scrollTop();
            } else {
                $("#alert-center").html('Ocurrio un error interno al intentar procesar el delivery');
                scrollTop();
            }
        }).always(function(){
            Utils.enableScreen();
        });
    },

    validForm : function() {
        if (!App.fileLoaded) {
            console.log('error - file upload');
            //mark error
            return false;
        }
        if (this.type == "file-tts") {
            return this.validFileTTS();
        }

        if (this.type == "file-sound") {
            return this.validFileSound();
        }
        return false;
    },

    validFileTTS : function() {
        var text = $('.tts-field', this.$el).val();
        if(text.length == 0 || !App.fileLoaded) {
            return false;
        }

        return true;
    },

    validFileSound : function() {
        return true;
    },

    buildData : function() {
        var data = {
            type : this.type
        }

        if (this.type == "file-tts") {
            data.text = $('.tts-field', this.$el).val();
        }

        var subject = $('.subject-field', this.$el).val();
        if(subject.length > 0) {
            data.subject = subject;
        }
        
        return data;
    }
});

var UploadView = Backbone.View.extend({

    el : $('.upload-file'),

    initialize : function() {
        var fileUpload = this.$el.fileupload({
            url: '/delivery/upload/file',
            acceptFileTypes: /(\.|\/)(xls|csv)$/i,
            maxFileSize: 3145728,
            autoUpload: true,
            sequentialUploads: true,
            singleFileUploads: true
        });

        fileUpload.bind('fileuploadadded', this.addedUpload)
                .bind('fileuploadstarted', this.startedUpload)
                .bind('fileuploaddone', this.doneUpload)
                .bind('fileuploadfail', this.failUpload);
    },

    addedUpload : function(e, data) {
        var fileName = data.files[0].name;
        if (!data.files.valid) {
            $("#alert-center").html('Formato Inválido');
            window.atartel_valid_file = false;
        } else {
            window.atartel_valid_file = true;
        }
    },

    startedUpload : function() {
        Utils.disableScreen();
    },

    doneUpload : function(e, data) {
        var response = data.result;
        Utils.enableScreen();
        App.fileLoaded = true;
        var element = $('.num-file-description');

        $('.total', element).html(response.rows);
        $('.valid', element).html(response.valid.length);
        $('.invalid', element).html(response.invalid.length);

        element.show();
    },

    failUpload : function(e, data) {
        console.log(data);
        $('.num-file-description').hide();
        Utils.enableScreen();
        App.fileLoaded = false;

        $("#alert-center").html('Ocurrió un error intentando cargar el fichero, verifique que sea un formato válido');
        scrollTop();
    }
});