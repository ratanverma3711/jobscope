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
					
					<h2 class="title">REGISTER</a></h2>
					<p class="meta">Please fill up this form</p>
					<div class="entry">
						<form action="process_employer_register.php" method="post">
							ENTER YOUR NAME <br><INPUT TYPE = "RADIO" VALUE="MR.">MR.<INPUT TYPE = "RADIO" VALUE="MRS.">MRS.<INPUT TYPE = "RADIO" VALUE="MISS">MISS
							<br><br><input type="text" name="nm" style="width:200px;" placeholder="Full Name">
							<br><br> ENTER PASSWORD <br> <input type ="password" name="pwd" placeholder="Password">
							<br><BR> ENTER COMPANY NAME <BR> <INPUT TYPE = "TEXT" name="cnm" style="width:200px;" placeholder="Company Name">
							<BR><BR> ENTER COMPANY ADDRESS <BR> <TEXTAREA name="addr" style="width:200px;"></TEXTAREA>
							<br><br> ENTER MOBILE NUMBER <br><input type="text" maxlength="10" name="ph" style="width:200px;" placeholder="Without any prefix i.e +91,+1">
							<BR><BR> ENTER A VALID EMAIL ADDRESS <BR> <INPUT TYPE = "email" name="email" style="width:200px;" placeholder="Example: abc@xyz.com">
							<BR><BR>COMPANY PROFILE<BR> <TEXTAREA name="profile" style="width:200px;"></TEXTAREA>							
							<center><br><br> <input type="submit" value="Submit"></center>			
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
