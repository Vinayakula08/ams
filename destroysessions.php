<?php include 'connection.php' ?>
<?php
    session_start();
    if(isset($_SESSION['adminusername'])){
    unset($_SESSION['adminusername']);
    }
    if(isset($_SESSION['farmerusername'])){
        unset($_SESSION['farmerusername']);
    }
    if(isset($_SESSION['traderusername'])){
        unset($_SESSION['traderusername']);
        unset($_SESSION['tid']);
    }
    session_destroy();
    header("location:home.php");
?>  