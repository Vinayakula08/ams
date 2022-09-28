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
        $query1 = "select name from tradersregister where tid = (select tid from tradersregister where username = '$username' and confirmpassword = '$password')";
        $res1 = mysqli_query($conn,$query1);
        $row = mysqli_fetch_array($res1);
        $_SESSION['auth']='true';
        $_SESSION['traderusername'] = $row[0];


        $query2 = "select tid from tradersregister where username = '$username' and confirmpassword = '$password'";
        $res2 = mysqli_query($conn,$query2);
        $row2 = mysqli_fetch_array($res2);
        $_SESSION['tid'] = $row2[0];
        //echo $_SESSION['traderusername'];
        header('location:traderdashboard.php');
    }
    else{
        echo 'Wrong username or password';
    }
}
?>