<?php

//only able to delete image from the hotels list


    if(isset($_GET['id'])) {
        $id = $_GET['id'];

        $getImage = $conn->query("SELECT * FROM hotels WHERE id = '$id'");
        $getImage->execute();

        $fetch = $getImage->fetch(PDO::FETCH_OBJ);

        unlink('../../assets/images/hotels/' . $fetch->image);


        $delete = $conn->prepare("DELETE FROM hotels WHERE id = '$id'");
        $delete->execute();

        header("Location: show-hotels.php");
    }

?>
