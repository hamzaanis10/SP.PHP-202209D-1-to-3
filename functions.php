<?php
// $y = 4;
// function hamza()
// {
//     global $y;
//     echo 'My name is hamza anis <br>';
//     echo $y;
// }

// hamza();

// $username = 'hamza';


// function registerUser2($username)
// {
//     echo "User ${username} has been registered!";
// }

// registerUser2('hamza');


function add($num1 = 4, $num2 = 2)
{
    return $num1 + $num2;
}

$sum = add(10);

echo $sum;

// Anonymous function

// $add = function ($num1, $num2) {
//     return $num1 + $num2;
// };


// echo $add(5, 5);

// Arrow functions

$multiply = fn ($num1, $num2) => $num1 * $num2;

echo $multiply(5, 5);
