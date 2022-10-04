<?php
// $age = 19;

// if ($age > 18) {
//     echo 'You are eligible to vote..';
// } else {
//     echo 'You are not eligible to vote..';
// }

// $time = date("H");

// if ($time < 12) {
//     echo 'have a good morning';
// } else if ($time < 17) {
//     echo 'have a good afternoon';
// } else {
//     echo 'have a good evening';
// };

$posts = ['hamza'];

// if (!empty($posts[0])) {
//     echo $posts[0];
// } else {
//     echo 'there are no posts today';
// }


// $firstItem = !empty($posts[0]) ? $posts[0] : 'there are no posts';

// $firstPost = !empty($posts[0]) ? $posts[0] : null;

// echo $firstPost;

// var_dump($firstPost);

$favColor = 'red';

// switch ($favColor) {
//     case 'yellow':
//         echo 'Your favourite color is red';
//         break;
//     case 'blue':
//         echo 'Your favourite color is blue';
//         break;
//     case 'green':
//         echo 'Your favourite color is green';
//         break;
//     default:
//         echo 'Your favourite color is not green, blue or red';
// }

// $num = 15;

// if ($num < 0) {
//     echo 'The number is negative';
// } else if ($num % 2 == 0) {
//     echo 'even number';
// } else {
//     echo 'odd number';
// }


// if ($num % 3 == 0 and $num % 5 == 0) {
//     echo 'FizzBuzz';
// } else if ($num % 5 == 0) {
//     echo 'Buzz';
// } else if ($num % 3 == 0) {
//     echo 'Fizz';
// } else if ($num < 0) {
//     echo 'The number is negative';
// }


$student_name = 'hamza';
$student_id = 'student1366102';
$student_gender = 'Male';
$english_marks = 55;
$urdu_marks = 85;
$maths_marks = 83;
$history_marks = 74;
$islamiat_marks = 72;
$total_marks = 500;
$obtainedMarks = $english_marks + $urdu_marks + $maths_marks + $history_marks + $islamiat_marks;
$percentage = $obtainedMarks / $total_marks * 100;


echo "Student Name: $student_name <br>";
echo "Student Id: $student_id <br>";
echo "Student Gender: $student_gender <br>";

echo "------------------------------------------ <br>";


echo "English Marks: $english_marks <br>";
echo "Urdu Marks: $english_marks <br>";
echo "Maths Marks: $english_marks <br>";
echo "History Marks: $english_marks <br>";
echo "Islamiat Marks: $english_marks <br>";

echo "------------------------------------------ <br>";

echo "Percentage: $percentage <br>";

echo "------------------------------------------ <br>";
