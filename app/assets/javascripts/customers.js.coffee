# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ -> 
 $(".date").each (index, element) =>
  id = $(element).attr("id")
  id_btn = id + "btn"
  Calendar.setup({
   inputField: id,
   button: id_btn,
   ifFormat: '%Y/%m/%d',
   dateType: 'jalali'  
  })