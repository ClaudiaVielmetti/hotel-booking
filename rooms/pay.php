<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php 

      if(!isset($_SERVER['HTTP_REFERER'])){
        // redirect them to your desired location
        echo "<script>window.location.href='" .APPURL. "' </script>";
        exit;
    }


?>
 <div class="container">

 



<?php require "../includes/footer.php"; ?>