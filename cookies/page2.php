<?php
    if(isset($_COOKIE['username'])){
        echo 'User' . " " . $_COOKIE['username'] . '<br>';
    }else {
        echo 'User is not set';
    }
?>