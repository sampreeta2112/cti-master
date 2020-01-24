<?php
include 'dynamic.php';

$disp_url = "DE_operater.php";
$edit_url = "DE_operater_edit.php";

if (isset($_GET["mode"])) {
    $mode = $_GET["mode"];
} else if (isset($_POST["mode"])) {
    $mode = $_POST["mode"];
} else {
    $mode = 'A';
}

if ($mode == 'A') {
    $company_name = '';
    $username     = '';
    $password     = '';
    $form_mode    = "I";
}
if ($mode == 'I') {
    // echo '<pre>';
    // print_r($_POST);
    // exit;
    $fileid = NextID("file_id", "file_records");
    $pass   = md5($_POST['password']);
    $p      = myhash($pass);
    $q      = "INSERT INTO `user_table`(`r_id`, `name`, `email_id`, `phno`, `addr`, `dob`, `username`, `pass_word`, `cStatus`, `user_type`) VALUES ('0','" . $_POST['company_name'] . "','','','','','" . $_POST['company_name'] . "','" . $p . "','A','F')";
    //echo $q;exit;
    $r = RunQry($q);

    $loc_str = $disp_url;

    echo "<script>
      window.location.assign('" . $loc_str . "');
      </script>";
    exit;

} elseif ($mode == 'E') {
    $company_name = '';
    $username     = '';
    $password     = '';
    $form_mode    = "I";

    $q = "select * from  file_records where file_id=$txtid";

    $r = RunQry($q);
    if (!mysqli_num_rows($r)) {
        header("location: $edit_url");
        exit;
    }
    $o = mysqli_fetch_object($r);

    $survey_date  = $o->survey_date;
    $expert_co    = $o->expert_co;
    $removed_date = $o->removed_date;
    $form_mode    = "U";

} elseif ($mode == 'U') {
    $survey_date  = $o->survey_date;
    $expert_co    = $o->expert_co;
    $removed_date = $o->removed_date;
    $removed_comp = $o->removed_comp;
    $q            = "Update file_records set survey_date = '$survey_date', expert_co = '$expert_co', removed_date= '$removed_date', removed_comp= '$removed_comp', location='$location', s_location='$s_location', items_detail='$items_detail', remarks='$remarks', report_no='$report_no', check_pt='$check_pt', n_removed=$n_removed, n_ship=$n_ship, asbestos=$asbestos, pcb =$pcb, ods =$ods, anti_fouling=$anti_fouling, pfos=$pfos, cd=$cd, cr6=$cr6, pb=$pb, hg='$hg', pbbs='$pbbs', pbedes='$pbedes', pcns='$pcns', radioactive='$radioactive', sccps='$sccps', hbccd='$hbccd', rcf='$rcf', Last_check='$Last_check', cond_chk='$cond_chk', status='$status' where file_id = '$txtid'";
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

$sms_template = "";
$subject      = '';

$cond    = " and cStatus='A'";
$url_str = "";

if (isset($_GET["name"])) {
    $txtname = $_GET["name"];
} elseif (isset($_POST["txtname"])) {
    $txtname = $_POST["txtname"];
} else {
    $txtname = '';
}

if (isset($_GET["region"])) {
    $txtregion = $_GET["region"];
} elseif (isset($_POST["txtregion"])) {
    $txtregion = $_POST["txtregion"];
} else {
    $txtregion = '';
}

if ($txtname != '') {
    $url_str .= "&name=$txtname";
    $txtname1 = addslashes($txtname);
    $cond .= " and name like '%$txtname1%' ";
    $flag = true;
}

if ($txtregion != '') {
    $url_str .= "&region=$txtregion";
    $cond .= " and r_id = '$txtregion' ";
    $flag = true;
}

$_SESSION[SES_ADMIN]->client_url_str = $url_str;
$_SESSION[SES_ADMIN]->client_cond    = $cond;

$page = 1;
if ((isset($_GET['page']))) {
    $page  = $_GET['page'];
    $start = ($page - 1) * PAGE_LIMIT; //first item to display on this page

} else {
    $start = 0;
}

//if($cond!='')
{
    $count      = GetSingleValue("select count(*) from user_table  where 1 $cond and user_type='DE'");
    $pagination = GetPagination($page, $count, $disp_url, $url_str);
}

$opr        = '"';
$client_arr = GetArray("Select concat('$opr',name,'$opr') as name from user_table where 1 ", 2);
$client_str = implode(",", $client_arr);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<html lang="en">
<head>
<?php include '_header.php';?>
  <script src="../js1.3/script.js"></script>
  <script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
  <script type="text/javascript" src="../ckeditor/sample.js"></script>
  <script type="text/javascript">
    $(function() {
    var availableatype = [
      <?php echo $client_str; ?>
    ];
    $( "#txtname" ).autocomplete({
      source: availableatype
    });
  });

    $(document).ready(function(){
         initSample();
        $('.fancybox').fancybox({
             afterClose: function() {
                 location.reload();
             }
        });
    });


    </script>

        <?php include '_menu.php';?>


         <div id="row_wrap">
            <div class="row">
                <div class="col-sm-11" id="searchbox">
                <form method="post" name="frm_search" action="<?php echo $disp_url ?>">
                    <input type="hidden" name="mode" id="mode" value="I">

                <label for="txtname"> Company Name :</label>
                <input type="text" name="company_name" id="company_name" value="">

                <label for="txtname"> USER Name :</label>
                <input type="text" name="username" id="username" value="">

                <label for="txtname"> Password :</label>
                <input type="password" name="password" id="password" value="">
                 <input type="submit" name="btn_submit" id="btn_submit" value="Submit">

                </form>
            </div>
        </div>

            <div class="col-sm-12" id="outer">
                <div class="row">
                <div class="col-sm-11" id="searchbox">
                <form method="post" name="frm_search" action="<?php echo $disp_url ?>">
                <label for="txtname"> USER Name :</label>
                <input type="text" name="txtname" id="txtname" value="<?php echo $txtname; ?>">

                &nbsp;&nbsp;&nbsp;

                &nbsp;&nbsp;&nbsp;
                <label>FLAG:</label>
                        <Select class="form-control" name="txtregion" id="txtregion" />
                        <option value="">Select</option>

                        <option value="">GERMANY</option>
                        <option value="">FRANCES</option>
                        <option value="">SINGOPORE</option>
                            <option value="">LIBERIA</option>
                        <?php
foreach ($region_arr as $region_id => $region_val) {
    ?>
                            <option value="<?php echo $region_id ?>" <?php if ($region_id == $txtregion) {
        echo "selected";
    }
    ?> ><?php echo $region_val ?></option>
                            <?php
}
?>
                        </select>
                         <label for="txtname">FLEET:</label>
                <input type="text" name="txtname" id="txtname" value="<?php echo $txtname; ?>">

                <div id="div-right" style = "padding-right:3%">
                <input type="submit" name="btn_submit" id="btn_submit" value="Search">
                <input type="button" name="btn_reset" value="Reset" onClick="window.location.assign('<?php echo $disp_url ?>')">
                </div>
                </form>
                </div>
                </div>

                <div class="row">
                    <div class="col-sm-11 list_div">
                      <h3>USER manager <a  href="<?php echo $edit_url; ?>"><?php echo IMG_ADD ?></a></h3>

                        <table width="100%" align="center" border="0" cellspacing="1" cellpadding="1" class="tbl-cont" >
                          <thead>
                            <tr>

                              <th width="5%">Sr.no</th>
                              <th >flag Name</th>

                              <th >ships Details</th>

                              <th width="5%">Edit</th>


                              </th>
                            </tr>
                          </thead>
                          <tbody>
                            <?php
$q = "";
//if($cond!='')
{
    $q = "select * from user_table  where 1 $cond and user_type='DE' order by name LIMIT $start, " . PAGE_LIMIT;
}
//echo $q;
$r      = RunQry($q);
$numrow = mysqli_num_rows($r);
$i      = 1;
if ($numrow) {
    for ($i = 1; $o = mysqli_fetch_object($r); $i++) {
        $x_id       = $o->user_id;
        $x_name     = $o->name;
        $x_email_id = $o->email_id;
        $x_phno     = $o->phno . "<br>";
        ?>
                            <tr>

                              <td><?php echo $i; ?></td>
                              <td><?php echo $x_name; ?></td>
                             <td></td>

                              <td><a href="<?php echo $edit_url; ?>?mode=E&id=<?php echo $x_id; ?>" title="Edit"><?php echo IMG_EDIT; ?></a></td>

                            </tr>
                            <?php

    }
    echo '<input type="hidden" id="count" value="' . $i . '"/>';
} else {
    echo "<tr><td colspan='5'> No record found...</td></tr>";
}

?>
                          </tbody>
                        </table>
                      <div align="right"><?php echo $pagination; ?></div>

                    </div>
                </div>


    </div>
  </div>
  </div>
  </div>


 <?php include '_footer.php';?>



</div>


</body>
</html>