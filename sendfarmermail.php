
<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';

$mail = new PHPMailer(true);

$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;

$mail->Username = '19bd1a0541@gmail.com';
$mail->Password = 'geiakncbqmsaqmsi';

$mail->SMTPSecure = 'ssl';
$mail->Port = 465;
$mail->setFrom('19bd1a0541@gmail.com');

$gmail = $_SESSION['gmail'];
$mail->addAddress($gmail);

$mail->isHTML(true);

$subject = "New registration.";
$mail->Subject = $subject;

$ppbno = $_SESSION['username'];
$newpassword = $_SESSION['password'];
$message = "Welcome to E-AGRI COMMODITY MARKETING..Your username and passsword to login to the portal is" . $ppbno . " and " . $newpassword . " respectively.";
$mail->Body = $message;

$mail->send();

echo "<script>alert('Sent Successfully');
document.location.href = 'admindashboard.php';
</script>"
?>
</body>
</html>
