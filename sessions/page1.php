<?php
    if(isset($_POST['submit'])){
        session_start();

        $_SESSION['username'] = $_POST['username'];
        $_SESSION['email'] = $_POST['email'];

        header('location: page2.php');

    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sessions</title>
</head>
<body>
    <form method='POST'>
        <input type='text' name='username' placeholder='Enter username'><br>

        <input type='email' name='email' placeholder='Enter email'><br>
        <!-- <input type='submit' name='submit' value='submit'> -->
        <button type='submit' name='submit'>Submit</button>
    </form>
</body>
</html>