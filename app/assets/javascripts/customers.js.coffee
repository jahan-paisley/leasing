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
	IsNationalCode = (value) ->
		if (value.length == 0)
			false
		else if (value.length == 10) 
			if (value == '1111111111' || value == '0000000000' || value == '2222222222' || value == '3333333333' || 
			     value == '4444444444' || value == '5555555555' || value == '7777777777' || value == '8888888888' || value == '9999999999')
				false
			else if (value.charAt(0) == '0' && value.charAt(1) == '0' && 
			           value.charAt(2) == '0' && value.charAt(3) == '0' && 
			           value.charAt(4) == '0' && value.charAt(5) == '0' && value.charAt(6) == '0')
				false
			else 
				c = parseInt(value.charAt(9));
				n = parseInt(value.charAt(0)) * 10 + parseInt(value.charAt(1)) * 9 + parseInt(value.charAt(2)) * 8 + 
				      parseInt(value.charAt(3)) * 7 + parseInt(value.charAt(4)) * 6 + parseInt(value.charAt(5)) * 5 + 
				      parseInt(value.charAt(6)) * 4 + parseInt(value.charAt(7)) * 3 + parseInt(value.charAt(8)) * 2;
				r = n - parseInt(n / 11) * 11;
				if ((r == 0 && r == c) || (r == 1 && c == 1) || (r > 1 && c == 11 - r))
					true
				else
					false
		else
			false
