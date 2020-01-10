
$(function() {
    $('[data-toggle="tooltip"]').tooltip();

    $('[data-toggle="popover"]').popover();

    $('.destroy').on('click', function(){
     if (confirm("Are you sure?")){
         $.ajax({
           url: '/articles/' + this.parentElement.parentElement.dataset["articleId"],
           type: 'DELETE',
           dataType: 'script',
           success: function(r){
            console.log("Deleted via jquery");
            
           }
         });
        }
   });
  });