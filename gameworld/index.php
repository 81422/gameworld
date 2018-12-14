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
    <!--Home page with php include for navigation and footer-->
    <?php include 'navigation.php';?>

    <div id="home-text">
        <h1>Welcome to GameWorld</h1>
        <h3>The most complete webshop!</h3>
        <hr>
    </div>

    <img id="home-image" src="images/fallout76.png"/>

    <div id="consoles">
        <ul>
            <li><a href="gamespage.php?gameCat=1"><img id="playstation" src="images/ps4.jpg"/></a></li>
            <li><a href="gamespage.php?gameCat=3"><img id="switch" src="images/switch.jpg"/></a></li>
            <li><a href="gamespage.php?gameCat=2"><img id="xbox" src="images/xbox.jpg"/></a></li>
        </ul>
    </div>

    <?php include 'footer.php';?>
</div>
</body>
</html>