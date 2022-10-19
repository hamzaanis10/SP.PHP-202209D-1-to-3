<?php
    session_start();

    if(isset($_SESSION['username']) && isset($_SESSION['email'])){
        echo $_SESSION['username'];
        echo $_SESSION['email'];
    }
?>