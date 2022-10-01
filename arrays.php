<?php
$numbers = [1, 2, 3, 4, 5, 6];

// print_r($numbers);
// var_dump($numbers);


// $murtaza = ['red', 'blue', 'green'];
// var_dump($murtaza);

// echo $numbers[2] - $numbers[5];
// Assosiative arrays
$colors = [
    6 => 'red',
    2 => 'green',
    3 => 'blue',
];

// echo $colors[6];


// $hex = [
//     'red' => '#f00',
//     'green' => '#0f0',
//     'blue' => '#00f',
//     2 => 19
// ];


// echo $hex[2];

// MultiDimentional arrays

$person1 = [
    'first_name' => 'ahmer',
    'last_name' => 'anis',
    'email' => 'hajshasjh@gmail.com',
    'cnic' => 424242421
];

$students = [
    $person1,
    [
        'first_name' => 'hamza',
        'last_name' => 'anis',
        'email' => 'hamzaanis@gmail.com',
        'cnic' => 1313813788
    ],

    [
        'first_name' => 'murtaza',
        'last_name' => 'mustafa',
        'email' => 'murtaza@gmail.com',
        'cnic' => 3131313133
    ],

    [
        'first_name' => 'wasiq',
        'last_name' => 'aman',
        'email' => 'wasiq@gmail.com',
        'cnic' => 918397378
    ],

];

// echo $students[1]['first_name'];

var_dump(json_encode($students));


// $jsonobj = '{"first_name":"Brad","last_name": "Traversy","email":"brad@gmail.com"}';
// var_dump(json_decode($jsonobj));
