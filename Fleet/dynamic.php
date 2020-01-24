<?php
include('../includes/db_config.php');

include('../includes/functions.php');

include('../includes/define.php');

//include('../includes/attendance_funct.php');


// echo '<pre>';
// print_r($_SESSION);
// exit;
$logged = 0;

if(isset($_SESSION[SES_USER]->log_stat)) // if the session variable has been set...
{	
	if($_SESSION[SES_USER]->log_stat == "A")
	{
		$logged = 1;
		$sess_user_id = $_SESSION[SES_USER]->user_id;
		$sess_full_name = $_SESSION[SES_USER]->full_name;
		$sess_user_name = $_SESSION[SES_USER]->user_name;
		$sess_user_role = $_SESSION[SES_USER]->user_role;
		
	}
}
if(isset($_SESSION[FLEET_USER]->log_stat)) // if the session variable has been set...
{	
	if($_SESSION[FLEET_USER]->log_stat == "A")
	{
		$logged = 1;
		$sess_user_id = $_SESSION[FLEET_USER]->user_id;
		$sess_full_name = $_SESSION[FLEET_USER]->full_name;
		$sess_user_name = $_SESSION[FLEET_USER]->user_name;
		$sess_user_role = $_SESSION[FLEET_USER]->user_role;
		
	}
}

// echo 'fg'.$logged;exit;
if(!$logged)
{
	// echo 'rt';exit;
	header('location:'.SITE_ADDRESS.'/login.php');
}


	$SITE_TITLE=$SITE_TITLE." | DE Operator";
	
	$sess_user_dp='';
	
	
?>
