<?php include 'connection.php';?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $_SESSION["username"]=$username;
    $query = "select * from admin where username = '$username' and password = '$password'";
    $res = mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>=1)
    {
        session_start();
        $_SESSION['auth']='true';
        header('location:admindashboard.php');
    }
    else{
        echo 'Wrong username or password';
    }
}
?>