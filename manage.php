<?php session_start();

	if(! isset($_SESSION['status']))
	{
		header("location:index.php");
	}
		$link=mysql_connect("localhost","Atul","Scooty1899")or die("can not connect");
		mysql_select_db("jobscope",$link) or die("can not select database");
		
		$q="select * from jobs where j_owner_name='".$_SESSION['unm']."'";
		
		$res=mysql_query($q,$link) or die ("wrong query");
		
		
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
					
					<h2 class="title">Manage jobs</h2>
					<p class="meta"></p>
					<div class="entry">
					<center><b> Your jobs <b></center>
					<table border="0" width="100%">
				
				<tr>
						<td width="20%">No
						<td width="50%">Title
						<td width="20%">Show
						<td width="10%">Delete
						
					</tr>
					
				<tr>
					<td colspan="4"><hr></td></tr>
				
				<?php
				$count=1;
					while($row=mysql_fetch_array($res))
					{
						echo '<tr> <td width="10%">'.$count.'
								<td width="50%"><a href="job_details.php?id='.$row['j_id'].'">'.$row['j_title'].'
								<td width="10%"><a href="show.php?id='.$row['j_id'].'&nm='.$row['j_title'].'">show</a>
								<td><a href="process_del_job.php?id='.$row['j_id'].'"><img src="images/delete.png"></a></tr>';
						
						$count++;
					}
					
				?>
					
					</tr>
					</table>
						
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
