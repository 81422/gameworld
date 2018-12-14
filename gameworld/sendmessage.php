<?php
//PHP to send mail
$link = "https://$_SERVER[HTTP_HOST]";
$actual_link = "https://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
$email_to = $_POST['email'];
$name = $_POST['firstname'];
$lastname = $_POST['lastname'];
$question = $_POST['message'];
$email_from = "bendevriesxd@gmail.com";

$subject = "Contact form message \n";
$headers = "From: bendevriesxd@gmail.com \n";
$headers .= "Reply-To: - \n";
$headers .= "MIME-Version: 1.0 \r\n";
$headers .= "Content-Type: text/html; charset=ISO-8859-1\r\n";

$message = $question;

ini_set("sendmail_from", $email_from);
$send = mail($email_to, $subject, $message, $headers, "-f" . $email_from);

if($send)
{
    header("Location: ./contactpage.php");
}
else
{
    echo "Failed to send";
}
?>