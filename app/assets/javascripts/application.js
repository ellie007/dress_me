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
//= require bootstrap.min
//= require jquery.ui.all
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// USE CSS HOVER CLASS OVER JQUERY
// Step 1. create a .highlighted class in your css to style when something is clicked
//$('<element to target>').on('mouseenter', function() {
  //$(this).addClass('<class name>')
//)};

<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>





