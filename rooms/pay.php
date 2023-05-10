<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php 

      if(!isset($_SERVER['HTTP_REFERER'])){
        // redirect them to your desired location
        header('location: http://localhost/hotel-booking/hotel-booking/index.php');
        exit;
    }


?>

<div class="hero-wrap js-fullheight" style="background-image: url('<?php echo APPURL; ?>/images/image_2.jpg');" data-stellar-background-ratio="0.5">
    <div class="overlay"></div>
    <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-start" data-scrollax-parent="true">
            <div class="col-md-7 ftco-animate">
                <h2 class="subheading">Payment Page</h2>


                <div class="container">


                    <!-- Replace "test" with your own sandbox Business account app client ID -->
                    <script src="https://www.paypal.com/sdk/js?client-id=APDie-W-c0enVnwy2xLy-RQuKRbpAs31ShMUKVre2AUsAEOEfx2Yi068&currency=USD"></script>

                    <!-- Set up a container element for the button -->
                    <div id="paypal-button-container"></div>
                    <script>
                        paypal.Buttons({
                            // Sets up the transaction when a payment button is clicked
                            createOrder: (data, actions) => {
                                return actions.order.create({
                                    purchase_units: [{
                                        amount: {
                                            value: '<?php echo $payment; ?>' // Can also reference a variable or function
                                        }
                                    }]
                                });
                            },
                            // Finalize the transaction after payer approval
                            onApprove: (data, actions) => {
                                return actions.order.capture().then(function(orderData) {

                                    window.location.href = 'index.php';
                                });
                            }
                        }).render('#paypal-button-container');
                    </script>
                </div>
            </div>
        </div>


    </div>
</div>

</div>



<?php require "../includes/footer.php"; ?>