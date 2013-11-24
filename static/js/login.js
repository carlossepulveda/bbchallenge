var LoginView = Backbone.View.extend({

	el : $('body'),

	events : {
		'click .login-button' : 'login',
		'click .continue-button' : 'continue'
	},

	initialize: function() {

	},

	login : function() {
		var user = $('#username').val();
		var pass = $('#password').val();
		if (user == 'edgar@gmail.com' && pass == 'somepass') {
			window.location.href = "#social";
		} else {
			alert('Usuario no autorizado');
		}
	},

	continue  : function () {
		window.location.href = '/home';
	}

});