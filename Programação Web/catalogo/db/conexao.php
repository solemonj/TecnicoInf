<?php

$host = "localhost";
$user = "root";
$password = "vertrigo";
$database = "db_prog_web";

$link = new mysqli($host, $user, $password, $database);

if($link->connect_error){
    die($link->connect_error);
}