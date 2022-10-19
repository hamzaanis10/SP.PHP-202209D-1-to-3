<?php
    if(isset($_POST['submit'])){
        $username = $_POST['username'];

        setcookie('username', $username, time() - 3600);

        header('location: page2.php');
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Cookies</title>
</head>
<body>
    <form method='POST'>
        <input type='text' name='username' placeholder='Enter username'><br>
        <!-- <input type='submit' name='submit' value='submit'> -->
        <button type='submit' name='submit'>Submit</button>
    </form>
</body>
</html>