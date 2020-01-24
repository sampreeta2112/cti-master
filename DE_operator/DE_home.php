
<?php

include 'dynamic.php';

$disp_url = "view_files.php" . "?page=1" . $url_str;
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


$uid = $_SESSION['SHIP_USER']->user_id;
$ship = $_SESSION['SHIP_USER']->shipid;
$shipnameq="select v_name,imo_no,flag from region_master where file_id='".$ship."'";
$rname      = RunQry($shipnameq);
$res_data = mysqli_fetch_assoc($rname);
$shipname = $res_data['v_name'];
$imo_no = $res_data['imo_no'];
$shipflag = $res_data['flag'];

$nameq="select name from user_table where user_id='".$uid."'";
$uname      = RunQry($nameq);
$resuser_data = mysqli_fetch_assoc($uname);
$username = $resuser_data['name'];


if ($mode == 'A') {

    $survey_date  = '';
    $expert_co    = '';
    $removed_date = '';
    $removed_comp = '';
    $location     = '';
    $s_location   = '';
    $items_detail = '';
    $remark       = '';
    $report_no    = '';
    $check_pt     = '';
    $n_removed    = '';
    $n_ship       = '';
    $asbestos     = '';
    $pcb          = '';
    $ods          = '';
    $anti_fouling = '';
    $pfos         = '';
    $cd           = '';

    $cr6             = '';
    $pb              = '';
    $hg              = '';
    $pbbs            = '';
    $pbedes          = '';
    $pcns            = '';
    $radioactive     = '';
    $sccps           = '';
    $hbccd           = '';
    $Last_check      = '';
    $cond_chk        = '';
    $status          = '';
    $docfileToUpload = '';


    $form_mode = "I";
}
if ($mode == 'I') {
    $userid = $_SESSION['SHIP_USER']->user_id;
    $fileid = NextID("pid", "file_records");

    foreach ($_POST['items_detail'] as $k => $v) {
        $file_tmp    = $_FILES["docfileToUpload"]["tmp_name"][$k];
        $target_dir  = "document/";
        $target_file = $target_dir . basename($_FILES["docfileToUpload"]["name"][$k]);
        if (move_uploaded_file($file_tmp, $target_file)) {
            $q = "INSERT INTO `file_records`(`file_id`,`survey_date`, `expert_co`, `removed_date`, `removed_comp`, `location`, `s_location`, `items_detail`, `remarks`, `report_no`, `check_pt`, `n_removed`, `n_ship`, `asbestos`, `pcb`, `ods`, `anti_fouling`, `pfos`, `cd`, `cr6`, `pb`, `hg`, `pbbs`, `pbedes`, `pcns`, `radioactive`, `sccps`, `hbccd`,`rcf`,`last_check`,`cond_chk`,`status`,`attachment`,`hazmat`) VALUES ('" . $ship . "','" . $_POST['survey_date'] . "','" . $_POST['expert_co'] . "','" . $_POST['removed_date'][$k] . "','" . $_POST['removed_comp'][$k] . "','" . $_POST['location'][$k] . "','" . $_POST['s_location'][$k] . "','" . $_POST['items_detail'][$k] . "','" . $_POST['remarks'][$k] . "','" . $_POST['report_no'] . "','" . $_POST['check_pt'][$k] . "','" . $_POST['n_removed'][$k] . "','" . $_POST['n_ship'][$k] . "','" . $_POST['asbestos'][$k] . "','" . $_POST['pcb'][$k] . "','" . $_POST['ods'][$k] . "','" . $_POST['anti_fouling'][$k] . "','" . $_POST['pfos'][$k] . "','" . $_POST['cd'][$k] . "','" . $_POST['cr6'][$k] . "','" . $_POST['pb'][$k] . "','" . $_POST['hg'][$k] . "','" . $_POST['pbbs'][$k] . "','" . $_POST['pbedes'][$k] . "','" . $_POST['pcns'][$k] . "','" . $_POST['radioactive'][$k] . "','" . $_POST['sccps'][$k] . "','" . $_POST['hbccd'][$k] . "','" . $_POST['rcf'][$k] . "', '" . $_POST['Last_check'][$k] . "','" . $_POST['cond_chk'][$k] . "','" . $_POST['status'][$k] . "','" . $_FILES['docfileToUpload']['name'][$k] . "','d')";
            //echo $q;exit;
            $r = RunQry($q);

            //echo 'id'.$id             = mysqli_insert_id($con);echo '<br>';

        } else {
            echo 'fail';
            exit;
        }

        //$response_query = mysqli_query($con, $q) or die('Error, insert query failed with query1');
          
        // $numrow = mysqli_num_rows($r);

    }

    $logq="INSERT INTO `fleet_record_log_table`(`record_id`, `user_id`, `log_time`) VALUES ('".$fileid."','".$userid."','".date('Y-m-d H:i:s')."')";
            $re = RunQry($logq);

    $loc_str = $disp_url;

    echo "<script>
      window.location.assign('" . $loc_str . "');
      </script>";
    exit;
    //$_SESSION[SES_ADMIN]->success_msg = "Client".$txt_msg." Details Successfully Inserted";

} elseif ($mode == 'E') {
    $id = $_GET['id'];
    $q = "select * from  file_records where pid=$id";
    $r = RunQry($q);
    if (!mysqli_num_rows($r)) {
        header("location: $edit_url");
        exit;
    }
    $o = mysqli_fetch_object($r);
    $pid = $o->pid;
    $survey_date  = $o->survey_date;
    $expert_co    = $o->expert_co;
    $report_no    = $o->report_no;
    $items_detail = $o->items_detail;
    $check_pt     = $o->check_pt;
    $location     = $o->location;
    $s_location   = $o->s_location;
    $remarks       = $o->remark;
    $removed_date = $o->removed_date;
    $removed_comp = $o->removed_comp;
    $n_removed    = $o->n_removed;
    $n_ship       = $o->n_ship;
    $asbestos     = $o->asbestos;
    $pcb          = $o->pcb;
    $ods          = $o->ods;
    $anti_fouling = $o->anti_fouling;
    $pfos         = $o->pfos;
    $cd           = $o->cd;
    $cr6          = $o->cr6;
    $pb           = $o->pb;
    $hg           = $o->hg;
    $pbbs         = $o->pbbs;
    $pbedes       = $o->pbedes;
    $pcns         = $o->pcns;
    $radioactive  = $o->radioactive;
    $sccps        = $o->sccps;
    $hbccd        = $o->hbccd;
    $rcf          = $o->rcf;
    $Last_check   = $o->Last_check;
    $cond_chk     = $o->cond_chk;
    $hazmat = $o->hazmat;
    $status       = $o->status;
    $docfileToUpload = $o->attachment;
    $form_mode    = "U";

} elseif ($mode == 'U') {

  $txtid = $_POST['id'];
    $survey_date  = $_POST['survey_date'];
    $expert_co    = $_POST['expert_co'];
    $removed_date = $_POST['removed_date'][0];
    $removed_comp = $_POST['removed_comp'][0];
    $location     = $_POST['location'][0];
    $s_location   = $_POST['s_location'][0];
    $items_detail = $_POST['items_detail'][0];
    $remark       = $_POST['remarks'][0];
    $report_no    = $_POST['report_no'];
    $check_pt     = $_POST['check_pt'][0];
    $n_removed    = $_POST['n_removed'][0];
    $n_ship       = $_POST['n_ship'][0];
    $asbestos     = $_POST['asbestos'][0];
    $pcb          = $_POST['pcb'][0];
    $ods          = $_POST['ods'][0];
    $anti_fouling = $_POST['anti_fouling'][0];
    $pfos         = $_POST['pfos'][0];
    $cd           = $_POST['cd'][0];
    $cr6          = $_POST['cr6'][0];
    $pb           = $_POST['pb'][0];
    $hg           = $_POST['hg'][0];
    $pbbs         = $_POST['pbbs'][0];
    $pbedes       = $_POST['pbedes'][0];
    $pcns         = $_POST['pcns'][0];
    $radioactive  = $_POST['radioactive'][0];
    $sccps        = $_POST['sccps'][0];
    $hbccd        = $_POST['hbccd'][0];
    $rcf          = $_POST['rcf'][0];
    $Last_check   = $_POST['Last_check'][0];
    $cond_chk     = $_POST['cond_chk'][0];
    $status       = $_POST['status'][0];

    $q = "Update file_records set survey_date = '".$survey_date."', expert_co = '".$expert_co."', removed_date= '".$removed_date."', removed_comp= '".$removed_comp."', location='".$location."', s_location='".$s_location."', items_detail='".$items_detail."', remarks='".$remarks."', report_no='".$report_no."', check_pt='".$check_pt."', n_removed='".$n_removed."', n_ship='".$n_ship."', asbestos='".$asbestos."', pcb ='".$pcb."', ods ='".$ods."', anti_fouling='".$anti_fouling."', pfos='".$pfos."', cd='".$cd."', cr6='".$cr6."', pb='".$pb."', hg='".$hg."', pbbs='".$pbbs."', pbedes='".$pbedes."', pcns='".$pcns."', radioactive='".$radioactive."', sccps='".$sccps."', hbccd='".$hbccd."', rcf='".$rcf."', Last_check='".$Last_check."', cond_chk='".$cond_chk."', status='".$status."' where pid = '$txtid'";
    //echo $q; exit();
    $r = RunQry($q);

    $userid = $_SESSION['SHIP_USER']->user_id;
    $logq="INSERT INTO `fleet_record_log_table`(`record_id`, `user_id`, `log_time`) VALUES ('".$txtid."','".$userid."','".date('Y-m-d H:i:s')."')";
    $re = RunQry($logq);

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
      .tb1{


    transition: 0.5s;



        width: 30px;
         border: 1px solid #c4c4c4;
  border-radius: 5px;
  background-color: #fff;
  padding: 3px 5px;
  box-shadow: inset 0 3px 6px rgba(0,0,0,0.1);

      }
      .tb1:focus {
    width:150px;
    transition: 0.5s;
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
<input type="hidden" name="mode" id="mode" value="<?php echo $form_mode;?>">
<input type="hidden" name="id" id="pkey" value="<?php echo $pid;?>">
<input type="hidden" name="number" id="number" value="1">

<div class="row">
    <div class="col-sm-12" id="searchbox" style="margin-right: 40px; width: 800px;">
                  <label>Ship Name:</label> <?php echo $shipname; ?> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="hidden"   name="v_name" style="width: 120px;" value="<?php echo $v_name; ?>" placeholder="">&nbsp;&nbsp;&nbsp;
              <label >Fleet:</label><?php echo $username;?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="hidden"   name="file_no" style="width: 120px;" value="<?php echo $file_no; ?>" placeholder="">&nbsp;&nbsp;&nbsp;
              <label for="txtname">Flag:</label><?php echo $shipflag; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="hidden"  style="width: 110px;"  name="file_no"  value="<?php echo $file_no; ?>" placeholder="">
              <label for="txtname">IMO No:</label><?php echo $imo_no; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <input type="hidden"  style="width: 110px;"  name="file_no"  value="<?php echo $file_no; ?>" placeholder=""><br><br>
          <label>Survey Date </label>&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="date"  id="date" name="survey_date" value="<?php echo $survey_date; ?>" placeholder="" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <label for="txtname">Expert Company</label>&nbsp;&nbsp;&nbsp;&nbsp;
        <select name="expert_co" id="expert_co" required>
        <option value=" "></option>
      <option value="CTI">CTI</option>
      <option value="KIWA">KIWA</option>
      </select>
        <label>Report No</label>&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="text"  id="report_no" name="report_no" value="<?php echo $report_no; ?>" placeholder="" required>




          <label>INSPECTION REPORT</label><input type="file" name="fileToUpload" id="fileToUpload">
          <!-- <button type="submit" type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" style="margin-left:40%;float: left; margin-top:10px;" class="btn btn-info btn-md">IMPORT</button> -->
          <button type="btn" type="button" name="import" class="btn btn-primary" style="margin-left:40%;float: left; margin-top:10px;" class="btn btn-info btn-md" onClick="import_details()">IMPORT</button>

            </div>
</div>





<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
      </div>
      <div class="modal-body">

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" onClick="fetch_tabledata()">Proceed</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>

<div class="table-responsive" style="margin-left:-100px; margin-top:20px;">
<table class="table" id="customFields" >
  <thead><tr><th>Items Details</th><th>check points</th><th>Location</th><th>Shipyard Location</th><th>Remarks</th><th>Removed Date</th><th>Removal company</th><th>Next Removal Date </th><th>Next Shipyard Entry Date </th><th>Asbestors</th><th>PCB</th><th>ODS</th><th>A/F</th><th>Cd</th><th>PFOs</th><th>Cr6+</th><th>Pb</th><th>Hg</th><th>PBBS</th><th>PBCEDEs</th><th>PCNs</th><th>Radioactive</th><th> Sccps</th><th>HBCCD</th><th>rcf</th><th>Last Checked</th><th>Condition of check points</th><th>“Hazmat (YES/NO)”</th><th>status</th><th>Upload Document</th><th>Delete</th><th><a href="javascript:void(0);" class="addCF">ADD<?php echo IMG_ADD1; ?></a></th></tr></thead>
  <tbody id="importdata">
    <tr><td><input type="text" id="items_detail1" name="items_detail[]" value="<?php echo $items_detail; ?>" class="tb1"></td>
<td><input type="text" id="check_pt1"  name="check_pt[]" value="<?php echo $check_pt; ?>" class="tb1"></td>
<td><input type="text"  id="location1" name="location[]" value="<?php echo $location; ?>" class="tb1"></td>
<td><input type="text" id="s_location1" name="s_location[]" value="<?php echo $s_location; ?>" class="tb1"></td>
<td><input type="text" id="remarks1" name="remarks[]" value="<?php echo $remarks; ?>" class="tb1"></td>
<td><input type="date" id="removed_date1" name="removed_date[]" value="<?php echo $removed_date; ?>" class=""></td>
<td><input type="text" id="removed_comp1" name="removed_comp[]" value="<?php echo $removed_comp; ?>" class="tb1"></td>
<td><input type="date" id="date1" name="n_removed[]" value="<?php echo $n_removed; ?>" class="date1"></td>
<td><input type="text" id="n_ship1" name="n_ship[]" value="<?php echo $n_ship; ?>" class="tb1"></td>
<td><input type="text" id="asbestos1" name="asbestos[]" value="<?php echo $asbestos; ?>" class="tb1"></td>
<td><input type="text" id="pcb1" name="pcb[]" value="<?php echo $pcb; ?>" class="tb1"></td>
<td><input type="text" id="ods1" name="ods[]" value="<?php echo $ods; ?>" class="tb1"></td>
<td><input type="text" id="anti_fouling1"  name="anti_fouling[]" value="<?php echo $anti_fouling; ?>" class="tb1"></td>
<td><input type="text" id="cd1" name="cd[]" value="<?php echo $cd; ?>" class="tb1"></td>
<td><input type="text" id="pfos1" name="pfos[]" value="<?php echo $pfos; ?>" class="tb1"></td>
<td><input type="text" id="cr61" name="cr6[]" value="<?php echo $cr6; ?>" class="tb1"></td>
<td><input type="text" id="pb1" name="pb[]"  value="<?php echo $pb; ?>" class="tb1"></td>
<td><input type="text" id="hg1" name="hg[]" value="<?php echo $hg; ?>" class="tb1"></td>
<td><input type="text" id="pbbs1" name="pbbs[]" value="<?php echo $pbbs; ?>" class="tb1"></td>
<td><input type="text" id="pbedes1" name="pbedes[]" value="<?php echo $pbedes; ?>" class="tb1"></td>
<td><input type="text" id="pcns1" name="pcns[]" value="<?php echo $pcns; ?>" class="tb1"></td>
<td><input type="text" id="radioactive1" name="radioactive[]" value="<?php echo $radioactive; ?>" class="tb1"></td>
<td><input type="text" id="sccps1" name="sccps[]" value="<?php echo $sccps; ?>" class="tb1"></td>
<td><input type="text"  id="hbccd1" name="hbccd[]" value="<?php echo $hbccd; ?>" class="tb1"></td>
<td><input type="text"  id="rcf1" name="rcf[]" value="<?php echo $rcf; ?>" class="tb1"></td>
<td><input type="date"  id="date1" name="Last_check[]" value="<?php echo $Last_check; ?>" class="tb1"></td>
<td><select id="cond_chk1" name="cond_chk[]" class="tb1">
  <option value="Good/Need">Good/Need</option>
  <option value="Repair/Need">Repair/Need</option>
</select></td>
<td><select id="hazmat1" name="hazmat[]" class="tb1">
  <option value="YES">YES</option>
  <option value="NO">NO</option>
</select></td>
<td><select id="status1" name="status[]" class="tb1">
  <option value="0">Marking</option>
  <option value="Marking">Marking</option>
  <option value="Containment">Containment</option>
  <option value="Removal">Removal</option>

</select></td>
<td><input type="file" name="docfileToUpload[]" id="docfileToUpload1" ></td>


</tr>
</tbody>
</table>
</div>
<tr>
<td><button type="btn" style="margin-left:40%;float: left; margin-top:10px;" class="btn btn-info btn-md" onClick="return validate_save()">Submit</button></td>
<td><button  style="margin-left:2%;float: left;margin-top:10px;" class="btn btn-info btn-md"><a href=view_files.php>cancel</button></td>
</tr>
</form>
</div>
</body>
<script type="text/javascript">
  $(document).ready(function() {
    var i=2;
$(".addCF").click(function(){
    $("#customFields").append('<tr valign="top"><td><input type="text" id="items_detail'+i+'" name="items_detail[]" value="" class="tb1" ></td><td><input type="text" id="check_pt'+i+'" name="check_pt[]" value="" class="tb1"></td><td><input type="text"  id="location'+i+'" name="location[]" value="" class="tb1"></td><td><input type="text" id="s_location'+i+'" name="s_location[]" value="" class="tb1"></td><td><input type="text" id="remarks'+i+'" name="remarks[]" value="" class="tb1"></td><td><input type="date" id="removed_date'+i+'" name="removed_date[]" value=""class="tb1"></td><td><input type="text" id="removed_comp'+i+'" name="removed_comp[]" value="" class="tb1"></td><td><input type="date" id="n_removed'+i+'" name="n_removed[]" value="" class="tb1"></td><td><input type="text" id="n_ship'+i+'" name="n_ship[]" value="" class="tb1"></td><td><input type="text" id="asbestos'+i+'" name="asbestos[]" value="" class="tb1"></td><td><input type="text" id="pcb'+i+'" name="pcb[]" value="" class="tb1"></td><td><input type="text" id="ods'+i+'" name="ods[]" value="" class="tb1"></td><td><input type="text" id="anti_fouling'+i+'"  name="anti_fouling[]" value="" class="tb1"></td><td><input type="text" id="cd'+i+'" name="cd[]" value="" class="tb1"></td><td><input type="text" id="pfos'+i+'" name="pfos[]" value="" class="tb1"></td><td><input type="text" id="cr6'+i+'" name="cr6[]" value="" class="tb1" ></td><td><input type="text" id="pb'+i+'" name="pb[]"  value="" class="tb1"></td><td><input type="text" id="hg'+i+'" name="hg[]" value="" class="tb1"></td><td><input type="text"  id="pbbs'+i+'" name="pbbs[]" value="" class="tb1"></td><td><input type="text"  id="tb" name="pbcedes[]" value="" class="tb1"></td><td><input type="text"  id="tb" name="pcns[]" value="" class="tb1"></td><td><input type="text" id="pbcedes'+i+'" name="radioactive[]" value="" class="tb1"></td><td><input type="text" id="sccps'+i+'" name="sccps[]" value="" class="tb1"></td><td><input type="text" id="hbccd'+i+'"  name="hbccd[]" value="" class="tb1"></td><td><input type="text" id="rcf'+i+'"  name="rcf[]" value="" class="tb1"></td><td><input type="date" id="Last_check'+i+'"  name="Last_check[]" value="" class="tb1"></td><td><select id="cond_chk'+i+'" name="cond_chk[]" class="tb1"><option value="Good/Need">Good/Need</option><option value="Repair/Need">Repair/Need</option></select></td><td><select id="hazmat'+i+'" name="hazmat[]" class="tb1"><option value="YES">YES</option><option value="NO">NO</option></select></td><td><select id="status'+i+'" name="status[]" class="tb1"><option value="0">Select Status</option><option value="Marking">Marking</option><option value="Containment">Containment</option><option value="Removal">Removal</option></select></td><td><input type="file" name="docfileToUpload[]" id="docfileToUpload"></td><td><a href="javascript:void(0);" class="remCF">Remove</a></td></tr>');
    document.getElementById('number').value=i;
  });
    $("#customFields").on('click','.remCF',function(){
        $(this).parent().parent().remove();
    });


});

function import_details()
{
  //debugger;
  var date = document.getElementById('date').value;
  var expert_co = document.getElementById('expert_co').value;
  var report_no = document.getElementById('report_no').value;
   $.ajax({
        url: "fetch_ajax.php",
        type: "post",
        data: {
            "identifier": "importdata",
            date: date,
            expert_co: expert_co,
            report_no: report_no
        },
        success: function(result) {
          //console.log(result);
          var d = result.split('||');
           $('.modal-body').html(d[0]);
           $('#exampleModal').modal('show');
        }
    });
}
function fetch_tabledata()
{
  //debugger;
  var message = '';
  var str1 = '';
  $("#Table1 input[type=checkbox]:checked").each(function () {
    var row = $(this).closest("tr")[0];
    message += row.cells[1].innerHTML;
    message += "   " + row.cells[2].innerHTML;
    message += "   " + row.cells[3].innerHTML;
    message += "\n";
    str1 += '<tr valign="top"><td><input type="text" class="tb1" name="items_detail[]" value="'+row.cells[1].innerHTML+'"></td><td><input type="text" class="tb1" name="check_pt[]" value=""></td><td><input type="text"  class="tb1" name="location[]" value="' +row.cells[3].innerHTML+ '"></td><td><input type="text" class="tb1" name="s_location[]" value=""></td><td><input type="text" class="tb1" name="remarks[]" value=""></td><td><input type="date" class="date1" name="removed_date[]" value=""></td><td><input type="text" class="tb1" name="removed_comp[]" value=""></td><td><input type="date" class="date1" name="n_removed[]" value=""></td><td><input type="text" class="tb1" name="n_ship[]" value=""></td><td><input type="text" class="tb1" name="asbestos[]" value=""></td><td><input type="text" class="tb1" name="pcb[]" value=""></td><td><input type="text" class="tb1" name="ods[]" value=""></td><td><input type="text" class="tb1"  name="anti_fouling[]" value=""></td><td><input type="text" class="tb1" name="cd[]" value=""></td><td><input type="text" class="tb1" name="pfos[]" value=""></td><td><input type="text" class="tb1" name="cr6[]" value="" ></td><td><input type="text" class="tb1" name="pb[]"  value=""></td><td><input type="text" class="tb1" name="hg[]" value=""></td><td><input type="text"  class="tb1"name="pbbs[]" value=""></td><td><input type="text"  id="tb" name="pbcedes[]" value=""></td><td><input type="text"  id="tb" name="pcns[]" value=""></td><td><input type="text" class="tb1" name="radioactive[]" value=""></td><td><input type="text" class="tb1" name="sccps[]" value=""></td><td><input type="text" class="tb1"  name="hbccd[]" value=""></td><td><input type="text" class="tb1" name="rcf[]" value=""></td><td><input type="date" class="date1"  name="Last_check[]" value=""></td><td><select class="tb1" name="cond_chk[]"><option value="Good/Need">Good/Need</option><option value="Repair/Need">Repair/Need</option></select></td><td><select class="tb1" name="hazmat[]"><option value="YES">YES</option><option value="NO">NO</option></select></td><td><select class="tb1" name="status[]"><option value="Marking">Marking</option><option value="Containment">Containment</option><option value="Removal">Removal</option></select></td><td><input type="file" name="docfileToUpload[]" id="docfileToUpload"></td><td><a href="javascript:void(0);" class="remCF">Remove</a></td></tr>';
      });

  document.getElementById('importdata').innerHTML = str1;
}

function validate_save()
{
        var t= document.getElementById('number').value;
        console.log(t);
        for(var i=1;i<=t;i++)
        {
          var d= document.getElementById('removed_date'+i).value;
          var status = document.getElementById('status'+i).value;
          if(d!= '' && status == '0')
          {
            document.getElementById('status'+i).value = 'Removal';
            return false;
          }
          else if(status == 'Removal' && d == '')
          {
            alert('Please enter removed date');
            return false;
          }
        }
}
</script>
</html>