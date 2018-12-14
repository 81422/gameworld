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
<!--code for the checkoutpage, static-->
<div id="main-container">
    <?php include 'navigation.php';?>

    <div id="headtext">
        <h1>Checkout</h1>
    </div>

	<table>
		<thead>
			<tr>
				<th>Image</th>
				<th>Game</th>
				<th>Console</th>
				<th>Price</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td class="tableimage"><img src="images/ps4/detroit.jpg"/></td>
				<td>Detroit: Become Human</td>
				<td>Playstation 4</td>
				<td>&euro; 59,99</td>
			</tr>
			<tr>
				<td class="tableimage"><img src="images/switch/mario.jpg"/></td>
				<td>Super Mario Odyssey</td>
				<td>Nintendo Switch</td>
				<td>&euro; 49,75</td>
            </tr>
            <tr>
				<td class="tableimage"><img src="images/xbox/halo5.jpg"/></td>
				<td>Halo 5: Guardians</td>
				<td>XBOX ONE</td>
				<td>&euro; 16,25</td>
			</tr>
		</tbody>
		<tfoot>
			<tr>
				<td id="tablefooter" colspan="4">&euro; 125,99</td>
			</tr>
        </tfoot>
    </table>
    
    <?php include 'footer.php';?>
</div>
</body>
</html>