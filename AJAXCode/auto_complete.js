function showName(str){

    if (str.length == 0){                                  

        document.getElementById("txtName").innerHTML="";   //clear previous results

        return;                                            //exit function if nothing has been typed in the textbox

    }
	
	
//start AJAX Object
    if (window.XMLHttpRequest) {                          // code for IE7+, Firefox, Chrome, Opera, Safari

        xmlhttp=new XMLHttpRequest();

    } else {                                              // code for IE6, IE5

        xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");

    }
	
	
//request data from server's frameworks.php file
    xmlhttp.onreadystatechange=function() {

        if (xmlhttp.readyState == 4 && xmlhttp.status == 200){

            document.getElementById("txtName").innerHTML=xmlhttp.responseText;

        }

    }
                                             //str is the argument passed in, which is the user typed string in the form's input
    xmlhttp.open("GET","frameworks.php?name="+str,true);       
              //send name=(str:user's input) via GET to server's frameworks.php file
              
    xmlhttp.send();               //send to (GET) and request data(xmlhttp.responseText) from frameworks.php on server

}