var PricesView = Backbone.View.extend({

    el : $('.pricing-table'),

    events : {
        'keyup .count': 'calculate',
        'click .buy' : 'buy'
    },

    initialize : function() {

    },

    buy : function(event) {
        var id = event.target.getAttribute('typeCount');
        var countCredits = $('#' + id).val();
        window.location.href =  '/buy?credits=' + countCredits;
    },

    calculate : function(event) {
        var id = event.target.getAttribute('id');
        var $element = $('#'+id);
        var countCredits = $element.val();
        var min = $element.attr('min');
        var max = $element.attr('max');
        if(Utils.isValidRangeNumber(countCredits, min, max)) {
            $element.removeClass('error');
            var price = $element.attr('price');
            var total = countCredits * price;
            total = Utils.formatThousandSepartor(total);
            $('#total'+id).html(total);
        } else {
            $element.addClass('error').focus();
        }
        
    }
    
});