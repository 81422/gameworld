<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8"/>
    <meta name="description" content="GameWorld">
    <link rel="stylesheet" type="text/css" href="css/style.css"/>
    <link href="images/gameicon.jpg" type="image/jpg" rel="icon"/>
    <title>GameWorld</title>
</head>
<body>
<div id="main-container">
    <!--contact page-->
    <?php include 'navigation.php';?>
    
    <div id="headtext">
        <h1>Contact Us</h1>
    </div>
    <div id="contact-form">
        <form action = "sendmessage.php" method = "POST">
            <ul>
                <li>
                    <label>Name:</label>
                    <input type="text" name="firstname" placeholder="Firstname" required/>
                </li>
                <li>
                    <label>Lastname:</label>
                    <input type="text" name="lastname" placeholder="Lastname" required/>
                </li>
                <li>
                    <label> E-mail:</label>
                    <input type="email" name="email" placeholder="E-mail" required/>
                </li>
                <li>
                    <label>Your message</label>
                    <textarea name="message" placeholder="Your message" required></textarea>
                </li>
                <li>
                    <input type="submit" value="Submit" name="submitmessage"/>
                </li>
            </ul>  
        </form>
    </div>

    <?php include 'footer.php';?>
</div>
</body>
</html>