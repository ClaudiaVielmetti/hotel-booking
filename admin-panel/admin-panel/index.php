<?php require 'layouts/header.php'; ?>
<?php require 'admins/config/config-admin.php'; ?>


<?php 

if(!isset($_SESSION['admin_name'])){
  echo "<script>window.location.href='".ADMINURL."/admins/login-admins.php';</script>";
  
}

//Hotel Count

  $hotels = $conn->query("SELECT COUNT(*) AS count_hotels FROM `hotels`");
  $hotels->execute();

  $alllHotels = $hotels->fetch(PDO::FETCH_OBJ);

?>




  <div class="row">
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Hotels</h5>
          <!-- <h6 class="card-subtitle mb-2 text-muted">Bootstrap 4.0.0 Snippet by pradeep330</h6> -->
          <p class="card-text">Number of Hotels: <?php echo $alllHotels->count_hotels; ?></p>

        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Rooms</h5>

          <p class="card-text">number of rooms: 4</p>

        </div>
      </div>
    </div>
    <div class="col-md-4">
      <div class="card">
        <div class="card-body">
          <h5 class="card-title">Admins</h5>

          <p class="card-text">number of admins: 3</p>

        </div>
      </div>
    </div>
  </div>


<?php require 'layouts/footer.php'; ?>