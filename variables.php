<?php
// echo- output strings, numbers, html etc 
// echo print multiple values in one go
// echo 'Hamza', 123, 10.5, 'murtaza';

// print - works exactly like echo but only take one print at a time
// print 123;

// print_r print single value and arrays 
// print_r([1,2,3,4])

var_dump(true);
// var dump returns more info about the value example type length

// PHP Data types

// string
// integer
// float
// Boolean
// Array
// Object
// Null
// Resource

// Variable rules

// varibles must be prefixed with $
// variables must start with a letter or the underscore
// variables can't start with a number
// variable can only contain alpha numeric characters and underscores

$name = 'hamza'; // String
$age = 22; //integer
$has_cnic = true; //Boolean
$cash_on_hand = 20.75; //float

echo $name, $age, $has_cnic, $cash_on_hand;
