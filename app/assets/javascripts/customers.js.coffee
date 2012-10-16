# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ -> 
# alert ($(".date").length)
 #$(".date").each (element) ->
 Calendar.setup(
  {
   inputField: 'customer_birthdate',
   button: 'date_btn',
   ifFormat: '%Y/%m/%d',
   dateType: 'jalali'
  })
 $(".date").each (index, element) =>
  id = $(element).attr("id")
  id_btn = id + "btn"
  #alert id
  Calendar.setup({
   inputField: id,
   button: id_btn,
   ifFormat: '%Y/%m/%d',
   dateType: 'jalali'  
  })
  "salam"
  
	
