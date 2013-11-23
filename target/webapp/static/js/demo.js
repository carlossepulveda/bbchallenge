var Demo={

  initialized: false,


  initialize: function() {

    if (this.initialized) return;
    this.initialized = true;

    this.build();
    this.events();

  },

  build: function() {

    this.validations();

  },

  events: function(){
    var that=this;
    

  },

  runPolling:function(delivery){
    var that = this;
    setTimeout(function() {
      that.pool(delivery)
    }, 1500);

  },

  pool:function(delivery){

    var that=this;
    $.ajax({
           type: "GET",
           url: '/delivery/'+delivery,
           dataType: 'json',
           beforeSend: function(xhr) {
               xhr.setRequestHeader("Accept", "application/json");
               xhr.setRequestHeader('Content-Type','application/json');
           },
        }).done(function(data) {
          console.log(data);
              that.updateDeliveryInfo(data);

              if (data.state != 'FINISHED' ) {
                that.runPolling(data.id);
              }

        }).error(function(data, info) {
               $('.output').html('Ha ocurrido un error al intentar encolar llamada ');  
        });
  },

  validations: function() {

    var that=this;

    $("#demoForm").validate({
      submitHandler: function(form) {

        var numbers=$("#numero").val();
        var tipo=$("input:radio[name='tipoPrueba']:checked").val();
        var keyService=$("#keyService").val();

        $.ajax({
           type: "POST",
           url: '/delivery',
           data: JSON.stringify({numbers:numbers, user:'permoda', type:tipo, key_service:keyService}),
           dataType: 'json',
           beforeSend: function(xhr) {
               xhr.setRequestHeader("Accept", "application/json");
               xhr.setRequestHeader('Content-Type','application/json');
           },
        }).done(function(data) {

              $(".estadoLlamada").show();
              if(data.state==200){

                $('#demoSuccess').html($('#demoSuccess').html()+'\n'+'Su llamada ha sido encolada satisfactoriamente : id de llamada : ' + data.idDelivery);

                $('#demoSuccess').removeClass("hidden");
                $('#demoError').addClass("hidden");

                $('#demoForm #numero, #demoForm #tipoPrueba, #demoForm #keyService')
                  .val("")
                  .blur()
                  .closest(".control-group")
                  .removeClass("success")
                  .removeClass("error");

                if(($("#demoSuccess").position().top - 80) < $(window).scrollTop()){
                  $("html, body").animate({
                     scrollTop: $("#demoSuccess").offset().top - 80
                  }, 300);                
                }


                //$('#output').html('Su llamada ha sido encolada satisfactoriamente : id de llamada : ' + data.idDelivery);
                var html='<div id="' + data.idDelivery + '" class="delivery"><a class="pull-top delivery-title" style="cursor:pointer">' + data.idDelivery + '</a><div class="console"></div></div>';
                $('#viewPort').append(html);
                $('.delivery').click(function(){
                    $('.console', $(this)).toggle();
                });
                setTimeout(function(){
                  $('#demoSuccess').slideUp(1500)
                }, 1500);
                that.runPolling(data.idDelivery);

              }else{
                $("#demoError").removeClass("hidden");
                $("#demoSuccess").addClass("hidden");
                var outMessage="";
                if(data.state==401){
                  $('#output').html('El Key Service no Corresponde');
                  outMessage='El Key Service no Corresponde';
                }else if(data.state==500){
                  $('#output').html('Su petición de Llamada no Pudo ser Procesada. Ocurrió un Error Interno');
                  outMessage='Su petición de Llamada no Pudo ser Procesada. Ocurrió un Error Interno';
                }else{
                  $('#output').html('Ocurrio una eventualidad no contemplada');
                  outMessage='Ocurrio una eventualidad no contemplada';
                }

                $('#demoError').html($('#demoError').html()+"\n"+outMessage);

                if(($("#demoError").position().top - 80) < $(window).scrollTop()){
                  $("html, body").animate({
                     scrollTop: $("#demoError").offset().top - 80
                  }, 300);                
                }

              }
                
             // document.getElementById("demoForm").reset();
               
        }).error(function(data, info) {
               $('.output').val('Ha ocurrido un error al intentar encolar llamada ');  

               $("#demoError").removeClass("hidden");
               $("#demoSuccess").addClass("hidden");

               if(($("#demoError").position().top - 80) < $(window).scrollTop()){
                  $("html, body").animate({
                     scrollTop: $("#demoError").offset().top - 80
                  }, 300);                
                }
        });
      },
      rules: {
        numero: {
          required: true
        },
        tipoPrueba: {
          required: true
        },
        keyService:{
          required: true
        }
      },
      highlight: function (element) {
        $(element)
          .closest(".control-group")
          .removeClass("success")
          .addClass("error");
      },
      success: function (element) {
        $(element)
          .closest(".control-group")
          .removeClass("error")
          .addClass("success");
          $('.error').remove();
      }
    });

  },

  updateDeliveryInfo : function(delivery) {
    var html = 'ESTADO : ' + delivery.state;
    for (var i in delivery.calls) {
      var call = delivery.calls[i];
      html += '<br/>&nbsp;&nbsp;- ' + call.number +'&nbsp;&nbsp;' + call.state + '&nbsp;&nbsp;' + call.isAnswered;
    }

    $('.console','#' + delivery.id).html(html);
    
  }

};


Demo.initialize();

