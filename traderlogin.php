<?php include 'connection.php';?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $query = "select * from tradersregister where username = '$username' and confirmpassword = '$password'";
    $res = mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>=1)
    {
        session_start();
        $_SESSION['auth']='true';
        header('location:traderdashboard.php');
    }
    else{
        echo 'Wrong username or password';
    }
}
?>