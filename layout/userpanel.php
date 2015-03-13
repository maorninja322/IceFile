<?php
if (!defined('BLARG')) die();

$userMenu = array();

if($loguserid)
{
	$userMenu[actionLink('upload')] = __('Upload');
	$userMenu[actionLink('remove')] = __('Remove');
	$userMenu[actionLink('uploaded')] = __('Uploaded');
}

$layout_userpanel = $userMenu;
?>
