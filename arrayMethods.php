<?php

$fruits = ['apple', 'mango', 'banana', 'strawberry', 'peach', 'watermelon'];

// Get length 
// echo count($fruits);

// Add to array
// $fruits[] = 'grape';
// $fruits[] = 'strawberry';

// Add element to the last
// array_push($fruits, 'blueberry', 'strawberry');

// Add element to the beginning
// array_unshift($fruits, 'peach');



// Remove from array
// array_pop($fruits);

// array_shift($fruits);

// $chunked_array = array_chunk($fruits, 3);

// print_r($chunked_array);

// $arr1 = [1, 2, 3];
// $arr2 = [4, 5, 6];

// $arr3 = array_merge($arr1, $arr2);

// Spread Operator

// $arr4 = [...$arr1, ...$arr2];
// print_r($arr4);


$a = ['green', 'red', 'yellow'];
$b = ['banana', 'apple', 'mango'];

$c = array_combine($a, $b);

// $flipped = array_flip($c);
// print_r($flipped);

// print_r($c);

$numbers = [1, 2, 3, 4, 5, 6, 7];

// $newNumbers = array_map(function ($number) {
//     return "Number $number";
// }, $numbers);

$lessThen10 = array_filter($numbers, fn($number) =)

print_r($newNumbers);
