<style>
	a{
		text-decoration:none;
		color:darkgrey;
	}
	a:hover{
		font-weight:bold;
		text-decoration:underline;
		color:white;
	}
</style>
<div class="head-div">
			<div class="main">
				<div class="head">
					<span>My Shopping Project</span>
					<p>THE BIGGEST CHOICE OF THE WEB</p>
				</div>
				<div class="btn">
					<?php if(empty($_SESSION['username']))  { ?>
						<a href="signup.php"><input type="button" name="" value="Log in"></a>
					<?php } else { ?>
						<a href="index.php?log=1"><input type="button" name="" value="Logout <?php echo $_SESSION['username'] ?>"></a>
					<?php } ?>
				</div>
			</div>
		</div>
		<div class="home-page">
		 	<div class="pagnation">
				<div class="list">
					<ul>
						<li><a href="index.php">HOME</a></li>
						<li><a href="newproducts.php">NEW PRODUCT</a></li>
						<li><a href="special.php">SPECIAL</li>
						<li><a href="allproducts.php">ALL PRODUCTS</li>
						<li>REVIEWS</li>
						<li><a href="contactus.php" >CONTACT</a></li>
						<li>FAQS</li>
					</ul>
				</div>
				<div class="search">
					<div class="search-1">
						<div class="input">
							<input type="text" name="">
						</div>
						<div class="btnn">
							<input type="button" name="" value="Search">
						</div>
					</div>
				</div>
			</div>
		</div>