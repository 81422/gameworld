<?php
$number = 1;
$query = false;
$console = false;
$gameCat= $_GET['gameCat'];

include 'database.php';

//gets the gameCat from the URL
switch($gameCat)
{
    case '0':
        $query = "categoryId = '1' OR categoryId = '2' OR categoryId = '3'";
        $console = "All Games";
        break;
    case '1':
        $query = "categoryId = '1'";
        $console = "Playstation 4";
        break;
    case '2':
        $query = "categoryId = '2'";
        $console = "XBOX ONE";
        break;
    case '3':
        $query = "categoryId = '3'";
        $console = "Nintendo Switch";
        break;

    default:
        header('Location: ./gamespage.php?gameCat=0');
        exit;
        break;
}
$sql = "SELECT * FROM games NATURAL JOIN gamecategory WHERE " . $query . " ORDER BY gameTitle";

$games = mysqli_query($con, $sql);
mysqli_close($con);
?>
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
<!--Games page-->
<div id="main-container">
    <?php include 'navigation.php';?>

    <div id="headtext">
        <h1><?php echo $console?></h1>
    </div>

    <div class="products-container">
    <?php
    //foreach loop for all the games inside the database
    foreach($games as $game)
    {
        if($number == 4)
        {
            ?>
            <div class="product-item last-product-item">
                <div class="product-image"><img src="<?php echo $game["gameImage"];?>"/></div>
                <div class="product-price <?php echo $game["categoryTitle"];?>">&euro; <?php echo $game["gamePrice"];?></div>
                <div class="product-console <?php echo $game["categoryTitle"];?>"><img src="images/icon/<?php echo $game["categoryTitle"];?>.jpg"/></div>
                <div class="product-name"><?php echo $game["gameTitle"];?></div>
                <div class="product-cart <?php echo $game["categoryTitle"];?>"><a href="checkoutpage.php">Add to cart</a></div>
            </div>
            <?php
            $number = 1;
        }
        else
        {
            ?>
            <div class="product-item">
                <div class="product-image"><img src="<?php echo $game["gameImage"];?>"/></div>
                <div class="product-price <?php echo $game["categoryTitle"];?>">&euro; <?php echo $game["gamePrice"];?></div>
                <div class="product-console <?php echo $game["categoryTitle"];?>"><img src="images/icon/<?php echo $game["categoryTitle"];?>.jpg"/></div>
                <div class="product-name"><?php echo $game["gameTitle"];?></div>
                <div class="product-cart <?php echo $game["categoryTitle"];?>"><a href="checkoutpage.php">Add to cart</a></div>
            </div>
            <?php
            $number = $number + 1;
        }
    }
    ?>
    <div class="clearfix"></div>
    </div>

    <?php include 'footer.php';?>
</div>
</body>
</html>