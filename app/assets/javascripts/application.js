// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require turbolinks
//= require_tree .
    // $(function(){
    // $(".dropdown").hover(            
    //         function() {
    //             $('.dropdown-menu', this).stop( true, true ).fadeIn("fast");
    //             $(this).toggleClass('open');
    //             $('b', this).toggleClass("caret caret-up");                
    //         },
    //         function() {
    //             $('.dropdown-menu', this).stop( true, true ).fadeOut("fast");
    //             $(this).toggleClass('open');
    //             $('b', this).toggleClass("caret caret-up");                
    //         });
    // });
    // 

    $(document).ready(function() {
    $('#myCarousel1').carousel({
    interval: 10000
    })
    
    $('#myCarousel1').on('slid.bs.carousel', function() {
        //alert("slid");
    });
    
    
});
