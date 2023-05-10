<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>

<?php

//if user is not logged in they should not be able to access bookings

    if(!isset($_SESSION['username'])){
        echo "<script>window.location.href='" .APPURL. "/login.php' </script>";
    }

//Getting the data from the bookings table to display bookings made by the users in the app

    if(isset($_GET['id'])){
    $id = $_GET['id'];

     //to make sure other users cant access each others bookings

        if($_SESSION['id'] != $id){
            echo "<script>window.location.href='" .APPURL. "' </script>";
        }

     

        $bookings = $conn->query("SELECT * FROM bookings WHERE user_id='$id'");
        $bookings->execute();

        $allBookings = $bookings->fetchAll(PDO::FETCH_OBJ);
    } else {
        echo "<script>window.location.href='" .APPURL. "/404.php' </script>";
    }


?>

<div class="container">


<?php 
// display when user has not made any bookings

    if(count($allBookings) > 0) : ?>


    <table class="table mt-5">
        <thead>
            <tr>
                
                <th scope="col">Check In</th>
                <th scope="col">Check Out</th>
                <th scope="col">Email</th>
                <th scope="col">Name</th>
                <th scope="col">Hotel</th>
                <th scope="col">Room</th>
                <th scope="col">Price</th>
                <th scope="col">Status</th>
                <th scope="col">Booking made</th>
            </tr>
        </thead>
        <tbody>

        <?php foreach($allBookings as $booking): ?>
            <tr>
                <th scope="row"><?php echo $booking->check_in; ?></th>
                <td><?php echo $booking->check_out; ?></td>
                <td><?php echo $booking->email; ?></td>
                <td><?php echo $booking->full_name; ?></td>
                <td><?php echo $booking->hotel_name; ?></td>
                <td><?php echo $booking->room_name; ?></td>
                <td><?php echo $booking->payment; ?></td>
                <td><?php echo $booking->status; ?></td>
                <td><?php echo $booking->created_at; ?></td>
            </tr>
        <?php endforeach; ?>
        </tbody>
        
    </table>
    <?php else : ?> 
        <div class="alert alert-warning">
            <h3>No bookings made yet</h3>
        </div>
    <?php endif; ?>
</div>

<?php require "../includes/footer.php"; ?>