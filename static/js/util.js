
var emailPattern = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

window.Utils = {

    isValidEmail : function(email) {
        var re =  new RegExp(emailPattern);

        if(email.match(re) && (email != '')) {
            return true;
        } else {
            return false;
        }
    },

    enableScreen : function() {
        $('#block-window').hide();
    },

    disableScreen : function() {
        $('#block-window').css({display : 'table'});
    },

    isValidRangeNumber : function(val, min, max) {
        var re = new RegExp("^\\d+$");
        var res = false;
        if(val.match(re)) {
            val = parseInt(val);
            min = parseInt(min);
            max = parseInt(max);
            if(val >= min && val <= max) {
                res = true;
            }
        }
        return res;
    },

    formatThousandSepartor : function(number) {
        
        x1 = number.toString();
        var rgx = new RegExp("(\\d+)(\\d{3})");
        while (x1.match(rgx)) {
            x1 = x1.replace(rgx, '$1' + '.' + '$2');
        }
        return x1;
    }
    
};