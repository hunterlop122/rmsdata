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

function timedRefresh(timeoutPeriod) {
  setTimeout("location.reload(true);",timeoutPeriod);
}
function areyouadancer() {
  timedRefresh(200);
}
function getSite() {
  a = document.getElementById('linkId').value
  console.log(a);
  $.getJSON('http://api.allorigins.ml/get?url=' + encodeURIComponent(a) + '&callback=?', function(data){
      console.log(data.contents);
  });
}
function getInput() {
  var a = document.getElementById('linkId').value
  console.log(a);
  $.getJSON('http://api.allorigins.ml/get?url=' + encodeURIComponent(a) + '&callback=?', function(data){
      //var b = data.contents;
      //console.log(b);
      var el = document.createElement( 'html' );
      el.innerHTML = data.contents;
      var c = el.querySelector('title').value;
      console.log(c);
  });

}

function trying() {
    var a = document.getElementById('linkId').value;
  $.get('https://api.allorigins.ml/get?method=raw&url=' + encodeURIComponent(a), function(data){
      var el = document.createElement( 'html' );
      el.innerHTML = data.contents;
      // works var c = el.querySelector('title').text;
      //var c = el.find('meta content').text;
      document.getElementById("demo").innerHTML = el.innerText;
      //var phrase = el.innerText;
      //var myRegexp = /phrase=(.*)/;
      //var match = myRegexp.exec(phrase);
      //alert(match[1]);
  });

}
function okayy() {
  var phrase = "yesthisismyphrase=thisiswhatIwantmatched";
  var myRegexp = /phrase=(.*)/;
  var match = myRegexp.exec(phrase);
  alert(match[1]);
}
function testing() {
var ighandle = document.getElementById('ighandle').value;
var post = document.getElementById('post').value;
var followers = document.getElementById('followers').value;
var following = document.getElementById('following').value;
var name = document.getElementById('name').value;
var bio = document.getElementById('bio').value;

$(document).ready(function () {

$('#trybtn').click(function () {
    $.ajax({
        url: "/igdancer",
        data: {
            igdancer: {
                ighandle: ighandle,
                post: post,
                followers: followers,
                following: following,
                name: name,
                bio: bio,
            }
        },
        error: function (error) {
            console.log(error);
        },
        success: function (data) {
          window.location.href = '/dancers/isadancer';
        },
        type: 'POST'
    });
});
})
}
