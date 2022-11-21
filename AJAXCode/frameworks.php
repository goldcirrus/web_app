<?php    //runs on server, contains the strings to be matched. 

$frameworks = array("CodeIgniter","Zend Framework","Cake PHP","Kohana") ;   //create an indexed array 

$name = $_GET["name"];         //variable "name" is passed from AJAX request via GET

if (strlen($name) > 0) {

    $match = "";

    for ($i = 0; $i < count($frameworks); $i++) {      //loop check each element string in array to compare them with $name's value

        if (strtolower($name) == strtolower(substr($frameworks[$i], 0, strlen($name)))) {
                                            //substr(string, offset, length); returns the portion of string specified by the offset and length parameters
            if ($match == "") {             //offset is the starting index

                $match = $frameworks[$i];    //add matched array's string  to $match

            } else {

                $match = $match . " , " . $frameworks[$i];    //more than one matched string in array found

            }

        }

    }

}

echo ($match == "") ? 'no match found' : $match;    //echo matched string as plain text back to client's request via AJAX XMLHttpRequest object's responsText. 

?>