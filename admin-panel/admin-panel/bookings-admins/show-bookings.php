<?php require '../layouts/header.php'; ?>
<?php require '../admins/config/config-admin.php'; ?>

<?php


  if (!isset($_SESSION['admin_name'])) {
    echo "<script>window.location.href='" . ADMINURL . "/admins/login-admins.php' </script>";
  }

  $bookings = $conn->query("SELECT * FROM bookings");
  $bookings->execute();

  $allBookings = $bookings->fetchAll(PDO::FETCH_OBJ);

?>


<div class="row">
  <div class="col">
    <div class="card">
      <div class="card-body">
        <h5 class="card-title mb-4 d-inline">Bookings</h5>

        <table class="table">
          <thead>
            <tr>
              <th scope="col">check in</th>
              <th scope="col">check out</th>
              <th scope="col">email</th>
              <th scope="col">phone number</th>
              <th scope="col">full name</th>
              <th scope="col">hotel name</th>
              <th scope="col">room name</th>
              <th scope="col">status</th>
              <th scope="col">payment</th>
              <th scope="col">status</th>
            </tr>
          </thead>
          <tbody>
            <?php foreach($allBookings as $booking) : ?>  
            <tr>
              <td><?php echo $booking->check_in; ?></td>
              <td><?php echo $booking->check_out; ?></td>
              <td><?php echo $booking->email; ?></td>
              <td><?php echo $booking->phone_number; ?></td>
              <td><?php echo $booking->full_name; ?></td>
              <td><?php echo $booking->hotel_name; ?></td>
              <td><?php echo $booking->room_name; ?></td>
              <td><?php echo $booking->status; ?></td>
              <td>R<?php echo $booking->payment; ?></td>

              

              <td><a href="status-bookings.php?id=<?php echo $booking->id; ?>" class="btn btn-success text-white text-center ">Status</a></td>
            </tr>
            <?php endforeach; ?>
           
          </tbody>
        </table>
      </div>
    </div>
  </div>
</div>
<?php require '../layouts/footer.php'; ?>