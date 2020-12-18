<?php
$__host = "localhost";
$__user = "root";
$__pass = "";
$__db   = "country_pedia"; 

@$__connection = mysqli_connect($__host, $__user, $__pass,$__db) or die('Connection not Found!');


function shortDescription($text,$n){
    $newStr ="";
    $text_ex = explode(' ',$text);
    $i=0;
    while($i < $n){

        if(isset($text_ex[$i])){
            if($newStr != '')
                $newStr .= ' '.$text_ex[$i];
            else
                $newStr = $text_ex[$i];

            $i++;
        }else{
            break;
        }
    }

    return $newStr.'...';
}
?>