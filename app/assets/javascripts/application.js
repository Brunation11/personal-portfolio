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
//= require turbolinks
//= require_tree .

$(document).ready(function(){

  // $('.logo').hover(function(){
  //   $('.jumbotron-header').fadeIn();
  // }, function(){
  //   $('.jumbotron-header').fadeOut();
  // });

  $("#about-button").click(function() {
    $('html, body').animate({
        scrollTop: $("#about").offset().top
    }, 600);
  });

  $("#contact-button").click(function() {
    $('html, body').animate({
        scrollTop: $("#contact").offset().top
    }, 600);
  });

  // $(window).bind('scroll', function () {
  //   if ($(window).scrollTop() > $('.main-header').height()) {
  //       $('#main-header').addClass('col-8 col-offset-2');
  //       $('.main-header').css('position', 'fixed');
  //       $('.main-header').hide().fadeIn(200);
  //   } else {
  //       $('#main-header').removeClass('col-8 col-offset-2');
  //       $('.main-header').css('position', 'absolute');
  //   }
  // });

  $('#new-post').on('click', function(event) {
    event.preventDefault();
    $.ajax({
      method: 'GET',
      url: $(this).attr('ajax_path')
    }).done(function(response) {
      $('#post-index').append(response);
    }).fail(function(response) {
      console.log("There was an eror" + response);
    });
  });
});

