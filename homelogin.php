<?php include 'connection.php';?>
<?php
if($_SERVER['REQUEST_METHOD']=='POST')
{
    $username = $_REQUEST['username'];
    $password = $_REQUEST['password'];
    $role = $_REQUEST['role'];
    if($role=="ADMIN")
        {
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
    if($role=="FARMER")
        {
        $query = "select * from farmersregister where ppbno = '$username' and confirmpassword = '$password'";
        $res = mysqli_query($conn,$query);
        if(mysqli_num_rows($res)>=1)
        {
            session_start();
            $_SESSION['auth']='true';
            header('location:farmerdashboard.php');
        }
        else{
            echo 'Wrong username or password';
        }
    }
    if($role=="TRADER")
        {
        $query = "select * from tradersregister where username = '$username' and confirmpassword = '$password'";
        $res = mysqli_query($conn,$query);
        if($res)
        {
            session_start();
            $_SESSION['auth']='true';
            header('location:traderdashboard.php');
        }
        else{
            echo 'Wrong username or password';
        }
    }
}
?>