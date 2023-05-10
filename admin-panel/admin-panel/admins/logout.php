<?php  

    session_start();
    session_unset();
    session_destroy();
    header("location:http://localhost/hotel-booking/hotel-booking/admin-panel/admin-panel/admins/login-admins.php");


?>