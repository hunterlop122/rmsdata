// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require_tree .

var i = 0;

$(document).ready(function () {
    $('.destroy').on('click', function () {
        $.ajax({
            url: '/dancers/' + this.parentElement.id,
            type: 'DELETE',
            success: function (r) {

            }
        });
    });
});

function openInstagram() {
    i = i + 1; // increase i by one
    i = i % igsData.length; // if we've gone too high, start from `0` again
    console.log(igsData[i]);
    window.open(`https://www.instagram.com/${igsData[i]}`);
    return igsData[i]; // give us back the item of where we are now
}

function yesbtn() {
}
function nobtn() {
}
$(document).ready(function () {
    $('#yesbtn').click(function () {
        $.ajax({
            url: "/dancers",
            data: {
                dancer: {
                    firstname: "",
                    lastname: "",
                    location: "",
                    email: "",
                    dancestyle: "Dancer",
                    phone: "",
                    ighandle: igsData[i],
                }
            },
            error: function (error) {
                console.log(error);
            },
            success: function (data) {
                console.log(data);
            },
            type: 'POST'
        });
    });
})
$(document).ready(function () {
    $('#nobtn').click(function () {
        $.ajax({
            url: "/dancers",
            data: {
                dancer: {
                    firstname: "",
                    lastname: "",
                    location: "",
                    email: "",
                    dancestyle: "NotADancer",
                    phone: "",
                    ighandle: igsData[i],
                }
            },
            error: function (error) {
                console.log(error);
            },
            success: function (data) {
                console.log(data);
            },
            type: 'POST'
        });
    });
})