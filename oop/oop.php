<?php

class User
{
    // Access modifiers 
    // Public
    // Private
    // Protected
    private $name;
    private $email;
    private $password;

    public function __construct($name, $email, $password)
    {
        $this->name = $name;
        $this->email = $email;
        $this->password = $password;
    }

    // function set_user($name, $email, $password)
    // {
    //     $this->name = $name;
    //     $this->email = $email;
    //     $this->password = $password;
    // }

    function get_user()
    {
        echo $this->name, $this->email, $this->password;
    }
};


$user1 = new User('hamza', 'hamza@gmail.com', 'hamza12');
// $user2 = new User();


// $user1->set_user('hamza', 'hamza@gmail.com', 'hamza1');
// $user1->get_user();
// $user1->name = 'hamza';
// $user1->email = 'hamza@gmail.com';
// $user1->password = 'hamza1';


// var_dump($user1);

class Employee extends User
{
    public function __construct($name, $email, $password, $title)
    {
        parent::__construct($name, $email, $password);
        $this->title = $title;
    }
}


$employee1 = new Employee('hamza', 'hamzaanis@gmail.com', 'hamza1', 'Manager');
$employee1->get_user();
// var_dump($employee1);
