<!--database.php for the php include with database connection-->
<?php
    //database information
    $host     = "localhost";
    $user     = "root";
    $pass     = "root";
    $database = "gameworld";

    $con      = mysqli_connect($host, $user, $pass, $database);

    //code when it fails to connect
    if(mysqli_connect_errno())
    {
        echo "Failed to connect to MYSQL: " . mysqli_connect_error();
    }
?>