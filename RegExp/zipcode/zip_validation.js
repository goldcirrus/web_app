function ValidateZip(inputText)
{
    var zipformat = /([A-Za-z][0-9][A-Za-z] [0-9][A-Za-z][0-9]|[A-Za-z][0-9][A-Za-z][0-9][A-Za-z][0-9])$/;
	
    if(inputText.value.match(zipformat))
    {
       alert("Valid Zip Code!");
       document.form1.text1.focus();
       return true;
    }
    else
    {
       alert("You have entered an invalid Zip Code!");
       document.form1.text1.focus();
       return false;
    }
}