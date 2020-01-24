<?php
include('../includes/db_config.php');

include('../includes/functions.php');

include('../includes/define.php');

//include('../includes/attendance_funct.php');

// echo '<pre>';
// print_r($_SESSION);exit;


$logged = 0;

if(isset($_SESSION[SES_MANAGER]->log_stat)) // if the session variable has been set...
{	
	if($_SESSION[SES_MANAGER]->log_stat == "A")
	{
		$logged = 1;
		$sess_user_id = $_SESSION[SES_MANAGER]->user_id;
		$sess_full_name = $_SESSION[SES_MANAGER]->full_name;
		$sess_user_name = $_SESSION[SES_MANAGER]->user_name;
		$sess_user_role = $_SESSION[SES_MANAGER]->user_role;
		
	}
}

if(isset($_SESSION[SHIP_USER]->log_stat))
{	
	if($_SESSION[SHIP_USER]->log_stat == "A")
	{
		$logged = 1;
		$sess_user_id = $_SESSION[SHIP_USER]->user_id;
		$sess_full_name = $_SESSION[SHIP_USER]->full_name;
		$sess_user_name = $_SESSION[SHIP_USER]->user_name;
		$sess_user_role = $_SESSION[SHIP_USER]->user_role;
		
	}
}
// echo $logged;exit;
if(!$logged)
{
	header('location:'.SITE_ADDRESS.'/login.php');
}


	$SITE_TITLE=$SITE_TITLE." | DE Operator";
	
	$sess_user_dp='';
	
	
?>
