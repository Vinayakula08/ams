<?php
// Start the session
session_start();
?>
<?php include 'connection.php';?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $query = "select * from farmersregister where ppbno = '$username' and confirmpassword = '$password'";
    $res = mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>=1)
    {
        $query1 = "select name from farmersregister where ppbno = (select ppbno from farmersregister where ppbno = '$username' and confirmpassword = '$password')";
        $res1 = mysqli_query($conn,$query1);
        $row = mysqli_fetch_array($res1);
        $_SESSION['auth']='true';
        $_SESSION['farmerusername'] = $row[0];
        //echo $_SESSION['farmerusername'];
        header('location:farmerdashboard.php');
    }
    else{
        echo 'Wrong username or password';
    }
}
?>