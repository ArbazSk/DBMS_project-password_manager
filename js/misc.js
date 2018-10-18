$(function(){

	$("#Cpassw").on('change', function(e)
	{
		e.preventDefault();
		var cpass = $(this).val();
		var pass = $("#passw").val();
		if(pass != cpass){
			$(this).val("");
			// $("cpasserr").html("<span class= 'alert alert-danger'> Password do not match</span>");
			$(alert("Password did not match."));

		}
		
	});

	$("#passw").on('change', function(e){
		e.preventDefault();
		$("#Cpassw").val("");
	});


});