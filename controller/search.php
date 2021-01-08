<?php
include_once __DIR__."/config.php";

function searchInCountries($keyword){
    $output = [];

    $keyword = mysqli_real_escape_string($GLOBALS['__connection'],$keyword);

    $query = "select `countries`.* from `countries` where  ";
    $query.= "(`countries`.name COLLATE UTF8_GENERAL_CI like '%$keyword%' or `countries`.short_description COLLATE UTF8_GENERAL_CI like '%$keyword%')";
    $query.= " order by `countries`.id desc limit 5";

    $run_query = mysqli_query($GLOBALS['__connection'], $query);
    while($row=mysqli_fetch_array($run_query)){
        array_push($output,$row);
    }
    return $output;
}
?>