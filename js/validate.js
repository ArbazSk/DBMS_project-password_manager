function checkEmail(e){
	var element=e.target;
	e.preventDefault();
	if(/[^a-zA-Z0-9@._]/.test(element.value))
	{
		alert("Email is invalid! Only characters a-z A-Z 0-9 @ . _ are allowed");
		element.value="";
		return false;
	}
	if(!/[a-zA-Z]/.test(element.value)){
		alert("Email is invalid! Only characters a-z or A-Z are must");
		element.value="";
		return false;
	}
	if(!/[@]/.test(element.value)){
		alert("Email is invalid! You are missing @");
		element.value="";
		return false;
	}
	if(!/[.]/.test(element.value))
	{
		alert("Email is invalid! .domain name is missing");
		element.value="";
		return false;
	}
	return true;
}

function checkUserName(e){
	var element=e.target;
	if(/[^a-zA-Z0-9]/.test(element.value))
	{
		alert("Invalid Username.It should Containt only AlphaNumeric only.");
		element.value="";
		return false;
	}
	return true;
}

function checkName(e){
	var element = e.target;
	if(/[^a-zA-z]/.test(element.value)){
		alert("Should Not Contain Numbers and Special Character.");
		element.value = "";
		return false;
	}
	return true;
}
function checkNum(e){
	var num = e.target;
	if(/[^0-9]/.test(element.value)){
		alert("Only Phone Number");
		element.value = "";
		return false;
	}
	return true;

}
var email = document.getElementById('email');
email.addEventListener('blur',checkEmail,true);

var username = document.getElementById('username');
username.addEventListener('blur',checkUserName,false);

var name = document.getElementById('FullName');
name.addEventListener('click',checkName,false);
