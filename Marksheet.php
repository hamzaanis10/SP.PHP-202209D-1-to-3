<?php
echo "<b>-----------Mark Sheet-----------</b> <br><br>";

$name = 'Wasiq Aman';
$id = 1366102;
$gender = 'Male';

echo "Student Name = $name <br>";
echo "Student ID = $id <br>";
echo "Student Gender = $gender <br>";

echo " <b>------------------------------------- </b><br>";

$eng = 55;
$urdu = 85;
$maths = 83;
$history = 74;
$islamiat = 72;

echo "English Marks = $eng <br>";
echo "Urdu Marks = $urdu <br>";
echo "Maths Marks = $maths <br>";
echo "History Marks = $history <br>";
echo "Islamiat Marks = $islamiat <br>";

echo "<b>------------------------------------- </b><br>";

$total = 500;
$obtain = $eng + $urdu + $maths + $history + $islamiat;
$percentage = $obtain / $total * 100;

echo "Total Marks is $total <br>";
echo "Obtained Marks is $obtain <br>";
echo "Percentage is $percentage <br>";

echo "<b>------------------------------------- </b><br>";

echo "Your Grade is ";
if ($percentage >= 80) {
    echo "A+";
} elseif ($percentage >= 70) {
    echo "A";
} elseif ($percentage >= 65) {
    echo "B+";
} elseif ($percentage >= 60) {
    echo "B";
} elseif ($percentage >= 55) {
    echo "C+";
} elseif ($percentage < 50) {
    echo "C";
};
