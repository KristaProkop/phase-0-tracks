$(document).ready(function() {
   $('#words').mouseenter(function() {
       $(this).animate({
           height: '+=10px'
       });
       $(this).css({"background-color": "#C1E0FF"});
   $('p').click(function() {
    $(this).css({"background-color": "#C1E0FF", 
             "border-weight":"1px", 
             "border-style":"solid"});
   });
   });
   $('div').mouseleave(function() {
       $(this).animate({
           height: '-=10px'
       }); 
   });
   $('div').click(function() {
       $(this).toggle(1000);
   }); 
});