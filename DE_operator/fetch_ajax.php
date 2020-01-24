
<?php
include 'dynamic.php';

if ($_POST['identifier'] == 'importdata') {
    $q      = "select * from plan_haz  where date='" . $_POST['date'] . "' or exp_co='" . $_POST['expert_co'] . "'";
    $r      = RunQry($q);
    $numrow = mysqli_num_rows($r);
    $str    = '';
    $str .= '<table class="table" id="Table1"><thead><tr><th>Select</th><th>Item Details</th><th>Exp Co</th><th>Location</th><th>Check point</th></tr></thead><tbody>';
    $i=1;
    while ($res_data = mysqli_fetch_assoc($r)) {
        $str .= '<tr><td><input type="checkbox" name="checkitem_'.$i.'" value="checkitem_'.$i.'"></td><td>' . $res_data['itm_details'] . '</td><td>' . $res_data['exp_co'] . '</td><td>' . $res_data['loc'] . '</td><td>' . $res_data['chk_pt'] . '</td></tr>'; 
    }
    $str .= '</tbody></table>';
    echo $str;exit;
}


if ($_POST['identifier'] == 'importpdf') {
    $q      = "select attachment,name,log_time from file_records  
    inner join user_table on user_table.r_id=file_records.file_id
    inner join fleet_record_log_table on fleet_record_log_table.record_id = file_records.pid
    where pid='" . $_POST['id'] . "'";
    echo $q;exit;
    $r      = RunQry($q);
    $numrow = mysqli_num_rows($r);
    $str    = '';
    $str .= '<table class="table" id="Table1"><thead><tr><th>Sr.no</th><th>User</th><th>Log Time</th><th>Pdf</th></tr></thead><tbody>';
    $i=1;
    while ($res_data = mysqli_fetch_assoc($r)) {
        $str .= '<tr><td>'.$i.'</td><td>' . $res_data['name'] . '</td><td>' . $res_data['log_time'] . '</td><td>' . $res_data['attachment'] . '</td></tr>'; 
        $i++;
    }
    $str .= '</tbody></table>';
    echo $str;exit;
}
