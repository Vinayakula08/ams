<?php include 'connection.php';?>
<?php
    session_start();
    ?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $query = "select * from tradersregister where username = '$username' and confirmpassword = '$password'";
    $res = mysqli_query($conn,$query);
    if(mysqli_num_rows($res)>=1)
    {
        $query1 = "select tid from tradersregister where username = '$username' and confirmpassword = '$password'";
        $res1 = mysqli_query($conn,$query1);
        $row = mysqli_fetch_array($res1);
        $_SESSION['tid'] = $row[0];
       // echo $_SESSION['tid'];
        //session_start();
        $_SESSION['auth']='true';
        header('location:traderdashboard.php');
    }
    else{
        echo 'Wrong username or password';
    }
}
?>