<?php
/**
 * Created by PhpStorm.
 * User: Dhiraj
 */

$connection = mysqli_connect('localhost','root','','gallery');
if(!$connection){
    echo 'Error: '.mysqli_error($connection);
    die();
}

