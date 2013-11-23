var App = {};

var UploadAudio = Backbone.View.extend({

    el : $('.upload-audio'),

    initialize : function() {

        var fileUpload = this.$el.fileupload({
            url: '/delivery/upload/audio',
            acceptFileTypes: /(\.|\/)(mp3|wav|ogg)$/i,
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
            console.log(data.files[0]);
            $("#alert-center").html('Audio inválido');
            window.atartel_valid_file = false;
            scrollTop();
        } else {
            window.atartel_valid_file = true;
        }
    },

    startedUpload : function() {
        Utils.disableScreen();
    },

    doneUpload : function(e, data) {
        $("#alert-center").html('');
        Utils.enableScreen();
        App.fileAudioLoaded = true;
    },

    failUpload : function(e) {
        Utils.enableScreen();
        $("#alert-center").html('Ocurrio un error intentando cargar el Audio . ' + e);
        scrollTop();
    }
});