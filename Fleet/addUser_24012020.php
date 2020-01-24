
<?php

include 'dynamic.php';

$disp_url = "addUser.php" . "?page=1" . $url_str;
$edit_url = "DE_home.php";

if (isset($_GET["mode"])) {
    $mode = $_GET["mode"];
} else if (isset($_POST["mode"])) {
    $mode = $_POST["mode"];
} else {
    $mode = 'A';
}

if (isset($_GET["id"])) {
    $txtid = $_GET["id"];
} else if (isset($_POST["txtid"])) {
    $txtid = $_POST["txtid"];
} else {
    $txtid = '0';
}

$uid = $_SESSION['FLEET_USER']->user_id;
$q = "select * from region_master  where user_id = $uid";
$r      = RunQry($q);
$numrow = mysqli_num_rows($r);
$str = '';
while ($res_data = mysqli_fetch_assoc($r)) {
  $str .= '<option value="'.$res_data['file_id'].'">'.$res_data['v_name'].'</option>';
}
if ($mode == 'A') {

    $username  = '';
    $password    = '';
    $form_mode = "I";
}
if ($mode == 'I') {
    // echo '<pre>';
    // print_r($_POST);
    // exit;
    $fileid = NextID("user_id", "user_table");
    foreach ($_POST['username'] as $k => $v) {
      $pass   = md5($_POST['password'][$k]);
      $p      = myhash($pass);
      $q      = "INSERT INTO `user_table`(`r_id`, `name`, `email_id`, `phno`, `addr`, `dob`, `username`, `pass_word`, `cStatus`, `user_type`) VALUES ('" . $_POST['ship'] . "','" . $_POST['username'][$k] . "','','','','','" . $_POST['username'][$k] . "','" . $p . "','A','SU')";
              $r = RunQry($q);
    }
    $loc_str = $disp_url;

    echo "<script>
      window.location.assign('" . $loc_str . "');
      </script>";
    exit;
    //$_SESSION[SES_ADMIN]->success_msg = "Client".$txt_msg." Details Successfully Inserted";

} elseif ($mode == 'E') {
    $survey_date  = '';
    $expert_co    = '';


    $form_mode = "I";

    $q = "select * from  file_records where file_id=$txtid";

    $r = RunQry($q);
    if (!mysqli_num_rows($r)) {
        header("location: $edit_url");
        exit;
    }
    $o = mysqli_fetch_object($r);

    $survey_date  = $o->survey_date;
    $expert_co    = $o->expert_co;
   
    $form_mode    = "U";

} elseif ($mode == 'U') {
    $survey_date  = $o->survey_date;
    $expert_co    = $o->expert_co;
   

    $q = "Update file_records set survey_date = '$survey_date', expert_co = '$expert_co', removed_date= '$removed_date', removed_comp= '$removed_comp', location='$location', s_location='$s_location', items_detail='$items_detail', remarks='$remarks', report_no='$report_no', check_pt='$check_pt', n_removed=$n_removed, n_ship=$n_ship, asbestos=$asbestos, pcb =$pcb, ods =$ods, anti_fouling=$anti_fouling, pfos=$pfos, cd=$cd, cr6=$cr6, pb=$pb, hg='$hg', pbbs='$pbbs', pbedes='$pbedes', pcns='$pcns', radioactive='$radioactive', sccps='$sccps', hbccd='$hbccd', rcf='$rcf', Last_check='$Last_check', cond_chk='$cond_chk', status='$status' where file_id = '$txtid'";
    //echo $q; exit();
    $r = RunQry($q);

    if ($r) {
        echo "<script type='text/javascript'>
          alert('Region updated successfully');
          </script>";
    } else {
        echo "<script type='text/javascript'>
          alert('Error in updating Region type');
          </script>";
    }

}

if ($mode == "I" || $mode == "U") {

    $loc_str = $edit_url . "?mode=E&id=$txtid";

    echo "<script>
      window.location.assign('" . $loc_str . "');
      </script>";
    exit;
}

?>





<!DOCTYPE html>
<html>
<head>
  <?php include '_header.php';?>
  <title></title>
  <style>
  #textbox{
    width: 150px;
     border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
  width: 140px;
  }
  .txtbx1{
    width: 40px;
     border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
  width: 140px;
  }
   #tb{
        width: 28px;
         border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);

      }

    </style>
    <style>
   #date{
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
  border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
  width: 140px;
}
#date::-webkit-inner-spin-button {
  display: none;
}
#date::-webkit-calendar-picker-indicator {
  opacity: 0;
}
 .date1{
  background:#fff url(https://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/calendar_2.png)  97% 50% no-repeat ;
  border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);
  width: 40px;
}
.date1::-webkit-inner-spin-button {
  display: none;
}
.date1::-webkit-calendar-picker-indicator {
  opacity: 0;
}
.date1:focus {
    width:150px;
    transition: 0.5s;
}


</style>


  <!-- Latest compiled and minified CSS -->
<script>
function goBack() {
  window.history.back();
}
</script>

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<?php include '_menu.php';?>
</head>
<body onload="goBack();"
  onpageshow="if (event.persisted) goBack();" onunload="">
<div class="container">





<form id="myForm" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post"  enctype="multipart/form-data">
<input type="hidden" name="mode" id="mode" value="I">
<label for="txtname">Ship:</label>
<select name="ship" id="ships">
  <option value='0'>Select Ship</option>
  <?php echo $str; ?>
</select>

<div class="table-responsive" style="margin-left:-100px; margin-top:20px;">
<table class="table" id="customFields" >
  <thead><tr><th>User Name</th><th>Password</th><th>Delete</th><th><a href="javascript:void(0);" class="addCF">ADD<?php echo IMG_ADD1; ?></a></th></tr></thead>
  <tbody id="importdata">
    <tr><td><input type="text" id="username1" name="username[]" value="" class="tb1"></td>
<td><input type="password" id="password1"  name="password[]" value="" class="tb1"></td>
</tr>
</tbody>
</table>
</div>
<tr>
<td><button type="btn" style="margin-left:40%;float: left; margin-top:10px;" class="btn btn-info btn-md">Submit</button></td>
<td><button  style="margin-left:2%;float: left;margin-top:10px;" class="btn btn-info btn-md">cancel</button></td>
</tr>
</form>
</div>
</body>
<script type="text/javascript">
  $(document).ready(function() {
    var i=2;
$(".addCF").click(function(){
    $("#customFields").append('<tr valign="top"><td><input type="text" id="username'+i+'" name="username[]" value="" class="tb1" ></td><td><input type="password" id="password'+i+'" name="password[]" value="" class="tb1"></td><td><a href="javascript:void(0);" class="remCF">Remove</a></td></tr>');
    document.getElementById('number').value=i;
  });
    $("#customFields").on('click','.remCF',function(){
        $(this).parent().parent().remove();
    });


});


</script>
</html>