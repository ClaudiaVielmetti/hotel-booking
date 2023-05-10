<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>

<?php

//Getting the data from the bookings table to display bookings made by the users in the app

    if(isset($_GET['id'])){
    $id = $_GET['id'];

        $bookings = $conn->query("SELECT * FROM bookings WHERE user_id='$id'");
        $bookings->execute();

        $allBookings = $bookings->fetchAll(PDO::FETCH_OBJ);
    }


?>

<table class="table">
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
    
    </tbody>
    <?php endforeach; ?>
</table>

<?php require "../includes/footer.php"; ?>