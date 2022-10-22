<?php
$allowed_extensions = ['png', 'jpg', 'jpeg', 'gif'];

if (isset($_POST['submit'])) {
    if (!empty($_FILES['upload']['name'])) {
        // print_r($_FILES);
        $file_name = $_FILES['upload']['name'];
        $file_size = $_FILES['upload']['size'];
        $file_temp = $_FILES['upload']['tmp_name'];
        $target_directory = "assets/${file_name}";

        // Get file extension 
        $file_extension = explode('.', $file_name);
        $to_lowercase = strtolower(end($file_extension));

        if (in_array($to_lowercase, $allowed_extensions)) {
            if ($file_size <= 1000000) {
                move_uploaded_file($file_temp, $target_directory);
                echo "<p style='color: green;'>File Uploaded</p>";
            } else {
                echo "<p style='color: red;'>File is too large</p>";
            }
        } else {
            echo "<p style='color: red;'>Invalid file type</p>";
        }
    } else {
        echo "<p style='color: red;'>Please choose a file</p>";
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>File Upload</title>
</head>

<body>
    <form method="post" enctype="multipart/form-data">
        Select image to upload:<br>
        <input type="file" name="upload"><br>
        <input type="submit" value="Submit" name="submit">
    </form>
</body>

</html>