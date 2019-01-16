<?php
session_start();

$event = $_POST['event'];

$product_id = $_POST['resource'];

$key = array_search($product_id, $_SESSION['favorites']);

switch ($event){

    case 'add':

        if(empty($key)){

            $_SESSION['favorites'][] =  $product_id;
        }else{
            unset($_SESSION['favorites']);
        }
        break;

    case 'delete':

        unset($_SESSION['favorites'][$key]);
        break;
}






