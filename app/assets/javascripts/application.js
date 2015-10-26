// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    $('.entry-form').show();
    $('#save').hide();
    $('#entry-box').focus();
});

$('#save').hide();

$("#start").click(
    $(function() {
        var timer, counter = $("#hideMsg span").text();
        $('.entry-form').delay(counter * 1000).fadeOut('slow');
        timer = setInterval(
            function() {
              $("#hideMsg span").html(--counter);
              if (counter == 0) {
                clearInterval(timer);
                //insert the record into the database and hide the button
                $('#save').hide().click();
                //hide the form
                $('.entry-form').hide();
              }
            },
        1000);
    })
);

$("#stop").click(
    $(function() {
        clearInterval(timer)
    })
);
