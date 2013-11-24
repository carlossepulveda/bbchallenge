var IndexView = Backbone.View.extend({
        
        el : $('body'),

		events : {
			'click .view-map' : 'clickViewMap',
			'click .view-list' : 'clickViewList'
		},

        initialize : function() {
            _.bindAll(this, 'initMap', 'renderMap','drawCurrentPosition');
            google.maps.event.addDomListener(window, 'load', this.renderMap);
        },

        initMap : function(geoPosition) {
            console.log(geoPosition);
            this.currentPosition = geoPosition;
            var latitude = geoPosition.coords.latitude;
            var longitude = geoPosition.coords.longitude;
            var markerCurrentPosition = new google.maps.LatLng(latitude, longitude);
            this.map = new google.maps.Map(document.getElementById('map'), {
              zoom: 12,
              center: markerCurrentPosition,
              mapTypeId: google.maps.MapTypeId.ROADMAP
            });
            this.drawCurrentPosition(this.map, markerCurrentPosition);

            var m1 = new google.maps.LatLng(4.663859, -74.063671);
            this.drawCurrentPosition(this.map, m1);
            var m2 = new google.maps.LatLng(4.675322, -74.049252);
            this.drawCurrentPosition(this.map, m2);
            var m3 = new google.maps.LatLng(4.648631, -74.066761);
            this.drawCurrentPosition(this.map, m3);
            var m3 = new google.maps.LatLng(4.649316, -74.102982);
            this.drawCurrentPosition(this.map, m4);
        },

        drawCurrentPosition : function(map, marker) {
            new google.maps.Marker({
              map: map,
              position: marker,
              draggable: true
            });
        },

        renderMap:function (eventName) {

            if(navigator.geolocation){
                navigator.geolocation.getCurrentPosition(this.initMap, function(error){
                    alert('Unable to find your location '+JSON.stringify(error));
                });
            }else{
                var geoPosition = {
                    coords : {
                        latitude : 4.68593,
                        longitude : -74.059696
                    }
                };
                this.initMap(geoPosition);
            }
        },

		clickViewList : function() {
			$('.view-type-buttons').removeClass('ui-btn-active');
			$('.view-list').addClass('ui-btn-active');

			$('.viewport').hide();
			$('#map').hide();
			$('.viewport-list').show();
			$('.places-list').show();

		},

		clickViewMap : function() {
			$('.view-type-buttons').removeClass('ui-btn-active');
			$('.view-map').addClass('ui-btn-active');

			$('.viewport').hide();
			$('#map').show();
			$('.viewport-map').show();
			$('.places-list').hide();
		}
});