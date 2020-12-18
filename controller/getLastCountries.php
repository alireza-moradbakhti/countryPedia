<?php
include_once __DIR__."/config.php";

function getLastCountries(){
    $output = [];

    $query = "select * from `countries` order by `id` desc limit 5";
    $run_query = mysqli_query($GLOBALS['__connection'], $query);
    while($row=mysqli_fetch_array($run_query)){
        array_push($output,$row);
    }
    return $output;
}

?>