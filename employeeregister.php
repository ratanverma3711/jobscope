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
						<form action="process_employee_register.php" method="post" enctype="multipart/form-data">
							ENTER YOUR NAME <br><INPUT TYPE = "RADIO" VALUE="MR.">MR.<INPUT TYPE = "RADIO" VALUE="MRS.">MRS.<INPUT TYPE = "RADIO" VALUE="MISS">MISS
							<br><br><input type="text" name="nm" style="width:200px;" placeholder="Full Name">
							<br><br>CREATE PASSWORD<br><input type="password" name="pwd" placeholder="Password">
							<BR><BR>GENDER <BR> <INPUT TYPE = "RADIO" VALUE="MALE" name="gender">MALE<INPUT TYPE = "RADIO" VALUE="female"name="gender">FEMALE
							<br><BR>ENTER A VALID EMAIL ADDRESS <BR> <INPUT TYPE = "email" name="email" style="width:200px;" placeholder="abc@xyz.com">
							<BR><BR>ENTER ADDRESS <BR> <TEXTAREA name="addr" style="width:200px;"></TEXTAREA>
							<BR><BR>ENTER PHONE NO. <BR> <INPUT TYPE = "TEXT" name="ph" style="width:200px;" placeholder="Phone No.">
							<BR> <BR>ENTER MOBILE NO.<BR> <INPUT TYPE = "TEXT" name="mobile" maxlength="10" style="width:200px;" placeholder="Without any prefix i.e. +91,+1">
							<br><br>ENTER CURRENT LOCATION <BR><INPUT TYPE="TEXT" name="cl" style="width:200px;">
							<BR><BR>ENTER CURRENT ANNUAL SALARY <BR><INPUT TYPE="TEXT" name="cas" style="width:200px;">
							<BR><BR>ENTER CURRENT INDUSTRY<BR><INPUT TYPE ="TEXT" name="cindustry" style="width:200px;">
							
							<BR><BR>ENTER QUALIFICATIONS<BR><INPUT TYPE = "TEXT" name="quali" style="width:200px;">
							<BR><BR>PROFILE<BR> <TEXTAREA name="profile" style="width:200px;"> </TEXTAREA>
							<br><br>RESUME<br><input type="file" name="resume" style="width:200px;">
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
