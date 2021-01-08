<?php
include_once __DIR__."/config.php";

function getFoodIng($foodId){
    $output = [];
    $query = "select * from `foods_ing` where `foods_ing`.foodId = '$foodId'";
    $run_query = mysqli_query($GLOBALS['__connection'], $query);
    while($row=mysqli_fetch_array($run_query)){
        array_push($output,$row);
    }
    return $output;
}
function getCountryById($id){

    $sep = _separator;

    $id = mysqli_real_escape_string($GLOBALS['__connection'],$id);

    /* JOIN QUERY on `characters` TABLE */
    $characters_q = "select concat(group_concat(`charcters`.name SEPARATOR '$sep'),'---',group_concat(`charcters`.short_description SEPARATOR '$sep'),'---',group_concat(`charcters`.img SEPARATOR '$sep')) from `charcters` where `charcters`.countryId = `countries`.id";
    /* JOIN QUERY on `cultures` TABLE */
    $cultures_q = "select concat(group_concat(`cultures`.name SEPARATOR '$sep'),'---',group_concat(`cultures`.short_description SEPARATOR '$sep')) from `cultures` where `cultures`.countryId = `countries`.id";
    /* JOIN QUERY on `languages` TABLE */
    $languages_q = "select group_concat(`languages`.name SEPARATOR '$sep') from `languages` where `languages`.countryId = `countries`.id";
    /* JOIN QUERY on `religions` TABLE */
    $religions_q = "select group_concat(`religions`.name SEPARATOR '$sep') from `religions` where `religions`.countryId = `countries`.id";
    /* JOIN QUERY on `religions` TABLE */
    //$fooding_q = "select GROUP_CONCAT(`foods_ing`.name,'-=-',`foods_ing`.img) as food_ings from `foods_ing` where `foods_ing`.foodId = `foods`.id";
    $foods_q = "select concat(group_concat(`foods`.id SEPARATOR '$sep'),'---',group_concat(`foods`.name SEPARATOR '$sep'),'---',group_concat(`foods`.short_description SEPARATOR '$sep'),'---',group_concat(`foods`.img SEPARATOR '$sep')) from `foods` where `foods`.countryId = `countries`.id";



    $query = "select 
             ($languages_q) as langs, 
             ($religions_q) as religs,
             ($cultures_q) as cultures,
             ($characters_q) as characters,
             ($foods_q) as foods 
             from `countries` where `countries`.id = '$id'";


    //die($query);
    $run_query = mysqli_query($GLOBALS['__connection'], $query);
    return mysqli_fetch_array($run_query);
}

?>