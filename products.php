<!DOCTYPE html>
<?php include('common/connection.php'); ?>
<html>
<head>
	<title>ENEST-4</title>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link href="https://fonts.googleapis.com/css?family=Bowlby+One+SC|Catamaran&display=swap" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="main-div">
		<?php include('common/header.php');?>
		<div class="null">
			
		</div>
		<div class="main-categorious">
			<div class="footer">
				<div class="categorious">
					<div class="cate-heading">
						<p>CATEGORIES</p>
					</div>
					<div class="items">
						<?php include('common/categories.php'); ?>
					</div>
				</div>
				<div class="contact">
				<?php
						$cid=$_GET['cid'];
						$query="select * from categories where id=$cid ";
						$result=mysqli_query($connect,$query);
						while($row=mysqli_fetch_assoc($result))
						{
					?>
					<div class="contact-us">
						<p><?php echo $row['categoryname'];?></p>
					</div>
						<?php } ?>
					<div class="product-info">
						<span>Sort by:</span>
						<form>
							<select>
								<option>product name</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
							</select>
						</form>
					</div>
					<div class="display-product">
						<span>Displaying 1 to 5(of 6 new product)</span>
						<div class="btnnn">
							<input  class="pre" type="submit" name="" value="Previous">
							<input class="nxt" type="submit" name="" value="Next">
						</div>
					</div>
					<?php
						$cid=$_GET['cid'];
						$query="select* from product where category_id=$cid ";
						$result=mysqli_query($connect,$query);
						while($row=mysqli_fetch_assoc($result))
						{
					?>
					
					<div class="dish-info">
						<div class="machine-pic">
							<div class="img">
								<img src="<?php echo $row['pimage'] ?>">
							</div>
							<div class="stock">
								<p>In Stock:<?php echo $row['productquantity'] ?></p>
							</div>
						</div>
						<div class="machine-info">
							<div class="date">
								<span> Date Added:2013-05-31  20:25:14</span>
							</div>
							<!-- <hr class="hr"> -->
							<div class="washer">
								<p><?php echo $row['pname'] ?></p>
							</div>
							<div class="model-info">
								<span>Model:<?php echo $row['pname'] ?></span>
								<p>Manufacturer:prouductname</p>
							</div>
							<div class="price">
								<span><?php echo $row['pprice'] ?></span>
							</div>
							<div class="checkout">
								<a href="buycart.php?pid=<?php echo $row['id'] ?>">
								<input type="submit" name="" value="BUY NOW"></a>
							</div>
						</div>
					</div>
						<?php } ?>
					
				</div>
				<div class="list-1">
					<ul>
						<li>HOME</li>
						<li>NEW PROJECT</li>
						<li>SPECIAL</li>
						<li>ALL PRODUCTS</li>
						<li>REVIEWS</li>
						<li>CONTACT</li>
						<li>FAQS</li>
					</ul>
				</div>
				<div class="footer-2">
					<p>Copyright <i class="fa fa-copyright" aria-hidden="true"></i>2013 Enest.Privacy Notice</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>