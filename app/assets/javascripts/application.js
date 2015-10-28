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

    //$('.entry-form').show();
    $('#entry-box').focus();

    timer = {
        start: function(){
            var timer, counter = $("#counter-timer span").text();
            clearInterval(timer);
            timer = setInterval(
                function() {
                    $("#counter-timer span").html(--counter);
                    if (counter == 0) {
                        clearInterval(timer);
                        // textarea is empty or contains only white-space
                        //save the record
                        $('#save').click();
                        //clear the form
                        $('#entry-box').val('');
                    }
                },
                1000);
        },

        restart: function() {
            $("#counter-timer span").html(5);
        }
    }
});

$(function() {
    timer.start();
});





