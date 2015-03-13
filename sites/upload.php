<div class="greyer"><h2>Upload</h2>
<?php if($loguserid)
{
	echo '
	<div align="center">
	<form action="#upload" method="post" enctype="multipart/form-data"> 
	<input type="file" name="file">
	<input type="submit" value="Upload">
	</form>	
	<hr>
	<h3>Upload Progress:</h3>
	<progress value="0" style="width:100%;height:20px;" max="100"></progress>
	</div>';
}
if(!$loguserid) {
echo '<div align="center">Sign in or Sign up to upload files</div>';	
}
?>
</div>
<br>
<div class="greyer"><h2>Resultbox</h2>
<div align="center">
<?php
if($_FILES) {
if($_FILES['file']['tmp_name'] == true)
{
	echo '<div id="done">';
	echo '<h2>Done</h2>';
	echo 'Successfully uploaded';
	if($_FILES['file']['size'] <  32000000)
	{
		move_uploaded_file($_FILES['file']['tmp_name'], "uploads/".$_FILES['file']['name']);
	}
	echo "<br>Click <a href=\"uploads/". basename( $_FILES["file"]["name"])."\">here</a> to download your file";
}
}
?>
</div>
