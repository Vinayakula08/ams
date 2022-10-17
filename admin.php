<?php include "connection.php"; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agriculture Market | Farmers</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css" integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    <style>

body{
           
           overflow-x: hidden; 
           overflow-y: auto; 
           background-color: aliceblue;
 background-repeat: no-repeat;
 background-attachment: fixed;
 background-size: cover;
           
       }
       .zoom:hover{
          transform:scale(1.1);
      }
    </style>
</head>
<body>
    <div class="loader"></div>
    
          <header>
          <div class="row">
            <div class="col-sm-3">
                <img src="data:image/jpeg;base64,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" style="display: inline;max-width: 40%;">
            </div>
            <div class="col-lg-8 col-sm-3">
    <center>
        <div style="text-decoration-style: wavy;color: rgb(165, 15, 15);display: inline;">
        <h1 style="color: rgb(5, 119, 5);">Agriculture Marketing System</h1>
        <h3 style="color: rgb(13, 95, 37);">Warangal,Telangana</h3>
       </div></center>
    </div>
    </div>
</header>
<div class="container-fuild">
    <nav class="navbar navbar-expand-lg navbar-static-top bg-info navbar-light">
        <div class="container-fuild">
            
            <div class="navbar-collapse collapse navbar" id="collapsibleNavbar">
                <ul class="nav navbar-nav mr-auto">
                    <li class="nav-item active">
                        <div class="zoom">
                        
                        <a class="nav-link" href="home.php"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="zoom">
                        <a class="nav-link" href="farmers.php"><i class="fa 92577344-2b1d7600-f2a8-11ea-9ddc-f03f280bda78" aria-hidden="true">Farmers</i></a>
                    </div>
                    </li>
                    <li class="nav-item">
                        <div class="zoom">
                        <a class="nav-link" href="trader.php">Buyers</a>
                    </div>
                    </li>
                    <li class="nav-item">
                        <div class="zoom">

                        <a class="nav-link" href="admin.php">Admin</a>
                        </div>
                    </li>
                    <li class="nav-item active">
                        <div class="zoom">
                        
                        <a class="nav-link" href="#"><i class="fa " aria-hidden="true"></i>Pricing</a>
                        </div>
                    </li>
                    <li class="nav-item">
                        <div class="zoom">
                        <a class="nav-link" href="#">About us</a>
                        </div>
                    </li>
                </ul>
                <ul class="nav navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="contactus.php"><i class="fa fa-address-card" aria-hidden="true"></i>
                            Contact Us</a>
                    </li>
                    </li>
                    
                </ul>
                

                
                
            </div>
        </div>
    </nav>
    <?php 
    $month = date('m');
    $day = date('d');
    $year = date('Y');

    $today = $day . '-' . $month . '-' . $year;
    ?>
    <marquee behavior="scroll" direction="left" style="
    color: rgb(32, 70, 28);
    font-weight: bold;
    background: #49c3d6;margin-bottom: 0;
    padding: 10px 0 10px;
    font-size: 14px;display:block" scrolldelay="100"><span><?php echo $today; ?></span>: <?php $query = "select *from mspdetails";
            $result = mysqli_query($conn,$query);
            if($result->num_rows>0):
                while($array=mysqli_fetch_row($result)):
                    echo $array[0];
                    echo " MSP: ";
                    echo $array[1];
                    echo " || ";
                endwhile;
            endif;
            ?></marquee>
    <form action = "adminlogin.php" method = "post">    
    <br>
    <div class="row mx-0 my-4 ">
           <div class="col mr-sm-2 pd-25 text-white text-center rounded bg1">
            <a href="#" >
             <button class="btn btn-success bg-green text-center border px-3 shadow text-white mr-sm-2 font22 btnBig" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
               <b>Login</b></button> </a>
               <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel"  style="color: black;">User Login</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1"  style="color: black;">Username</span>
                                </div> 
                                <div class="input-group-prepend">
                                <input type="text" class="form-control" placeholder="Username" name= "username" aria-label="Username" aria-describedby="basic-addon1">
                            </div>
                            </div>
                            <div class="input-group mb-3">
                                <div class="input-group-prepend">
                                    <span class="input-group-text" id="basic-addon1">Password</span>
                                </div>
                                <div class="input-group-prepend">
                                <input type="password" class="form-control" placeholder="Password" name= "password" aria-label="Password" aria-describedby="basic-addon1">
                               
                            </div>  
                            </div>
                        </div>
                        
                        <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <form action="adminlogin.php" method="post">
                        <button type="submit" class="btn btn-primary"  onclick="adminlogin.php">Login</button>
                    </form>
                    </div>
                    </div>
                </div>
            </div>
    </form>
           </div> </div>
           
           <footer>
            <div class="container" style="background-color: #49c3d6;">
                <p style="color: black;">@copyrights 2021 AMS.All Rights Reserved.</p>
            </div>
        </footer>
    
</body>
</html>