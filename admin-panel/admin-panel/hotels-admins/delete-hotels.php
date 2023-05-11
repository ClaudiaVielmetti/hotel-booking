<?php require '../layouts/header.php'; ?>
<?php require '../admins/config/config-admin.php'; ?>

<?php

//Delete Image as well as hotel. The image will be removed from the folder hotel_images


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

<?php require '../layouts/footer.php'; ?>
