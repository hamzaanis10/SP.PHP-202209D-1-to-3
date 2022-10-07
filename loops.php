<?php

// for ($x = 10; $x > 0; $x--) {
//     echo "Hello world <br>";
// }

// $x = 1;
// while ($x < 10) {
//     echo "hamza - $x <br>";
//     $x++;
// };

// $counter = 1;
// do {
//     echo "$counter it is run atleast one time even if the cond is false <br>";
//     $counter++;
// } while ($counter <= 10);

// Foreach

// $numbers = [1, 2, 3, 4, 5];

// foreach ($numbers as $number) {
//     echo "Number: $number <br>";
// }


// $posts = ['Post One', 'Post Two', 'Post Three'];

// foreach ($posts as $index => $post) {
//     echo "${index} - ${post} <br>";
// }



$person = [
    'first_name' => 'hamza',
    'last_name' => 'anis',
    'email' => 'hamza@gmail.com',
];

// Get Keys
foreach ($person as $key => $val) {
    echo "${key} - ${val} <br>";
}
