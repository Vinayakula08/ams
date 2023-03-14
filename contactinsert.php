<?php
// Start the session
session_start();
?>
<?php include 'connection.php';?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $email = $_REQUEST['Email'];
    $mobilenumber = $_REQUEST['Mobilenumber'];
    $des = $_REQUEST['textarea'];
    $query = "INSERT INTO `contactinser` (`email`, `mobilenumber`, `description`) VALUES ('$email', '$mobilenumber', '$des')";
    $res = mysqli_query($conn,$query);
   
    header('location:contactus.php');
}
?>