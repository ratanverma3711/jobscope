<?php session_start();
?>
<!DOCTYPE html>


<html>
<head>

<?php
include("includes/head.inc.php");
?>
</head>
<body>
<div id="header-wrapper">
	<div id="header">
	<div id="menu">
		<?php
		include("includes/menu.inc.php");
		?>
		</div>
		<!-- end #menu -->
		<div id="search">
		<?php
		
		include("includes/search.inc.php");
		?>
		</div>
		<!-- end #search -->
	</div>
</div>
<!-- end #header -->
<!-- end #header-wrapper -->
<div id="logo">
	<?php
	include("includes/logo.inc.php");
	?>
	</div>
<div id="wrapper">
	<div id="page">
		<div id="page-bgtop">
			<hr />
			<!-- end #logo -->
			<div id="content">
				<div class="post">
					
					<h2 class="title">Contact</h2>
					<p class="meta">Please fill this form if you have any query</p>
					<div class="entry">
					<form action="process_contact.php" method="post">
						Enter your Name <br><INPUT TYPE = "RADIO" VALUE="MR.">MR.<INPUT TYPE = "RADIO" VALUE="MRS.">MRS.<INPUT TYPE = "RADIO" VALUE="MISS">MISS
						<br><br><input type="text" name="nm" placeholder="Full Name">
						<br><br> Enter Email <br><br> <input type="email" name="email" placeholder="abc@xyz.com">
						<br><br> Query <br><br> <textarea name="query"></textarea>
						<center><br><br> <input type="submit" value="submit"></center>
					</form>
						
					</div>
				</div>
				
			</div>
			<!-- end #content -->
			<div id="sidebar">
			<?php
		include("includes/sidebar.inc.php");
		?>	
			</div>
			<!-- end #sidebar -->
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<!-- end #page -->
<div id="footer-bgcontent">
	<div id="footer">
		<?php
		include("includes/footer.inc.php");
		?>	
	</div>
</div>
<!-- end #footer -->
</body>
</html>
