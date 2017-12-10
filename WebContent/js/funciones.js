/**
 * 
 */

var funcion = {};
funcion = (function () {
var $this = this;

   function postAjax(urlCustom, dataCustom) {
        return $.ajax({
                    url : urlCustom,
                   type : "POST",
            contentType : "application/json",
               dataType : "json",
                   data : JSON.stringify(dataCustom)
        });
    }
   
});
