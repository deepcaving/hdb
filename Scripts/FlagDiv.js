/// <reference path="Scripts/jquery-1.4.1.min.js" />
$(document).ready(function() {
  $.ajax({
    type: "POST",
    url: "CountryFlagReader.asmx/GetFlagReader",
    data: "{}",
    contentType: "application/json; charset=utf-8",
    dataType: "json",
    success: function(msg) {
      //$('#FlagContent ').removeClass('loading');
      $('#FlagContent ').html(msg.d);
    }
  });
});