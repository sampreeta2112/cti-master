<?php
include 'includes/db_config.php';

include 'includes/functions.php';

include 'includes/define.php';

if (isset($_POST['login_submit'])) {
    $txtusername = post_val($_POST["username"]);
    $txtpassword = md5(post_val($_POST["pass_word"]));

    if (trim($txtusername) != "" || trim($txtpassword) != "") {
        $txtusername = trim($txtusername);
        $txtpassword = myhash($txtpassword);

        $q = "SELECT user_id,r_id,user_type,username,pass_word FROM `user_table` WHERE `username`='$txtusername'";
        //echo $q;exit;
        $r = mysqli_query($link, $q) or die(mysqli_error($link));

        if (mysqli_num_rows($r)) {
            list($id, $rid,$urole, $uname, $pass) = mysqli_fetch_row($r);

            if ($txtpassword == $pass) {
                if ($urole == 'A') {
                    $_SESSION[SES_ADMIN]->log_stat  = "A";
                    $_SESSION[SES_ADMIN]->user_id   = $id;
                    $_SESSION[SES_ADMIN]->full_name = $uname;
                    $_SESSION[SES_ADMIN]->user_name = $uname;
                    $_SESSION[SES_ADMIN]->user_role = $urole;
                    header("Location: admin/index.php");
                    exit();
                } else if ($urole == 'DE') {
                    $_SESSION[SES_MANAGER]->log_stat  = "A";
                    $_SESSION[SES_MANAGER]->user_id   = $id;
                    $_SESSION[SES_MANAGER]->full_name = $uname;
                    $_SESSION[SES_MANAGER]->user_name = $uname;
                    $_SESSION[SES_MANAGER]->user_role = $urole;

                    header("Location: DE_operator/view_files.php");
                    exit();
                } else if ($urole == 'QC') {
                    $_SESSION[SES_QUALITY]->log_stat  = "A";
                    $_SESSION[SES_QUALITY]->user_id   = $id;
                    $_SESSION[SES_QUALITY]->full_name = $uname;
                    $_SESSION[SES_QUALITY]->user_name = $uname;
                    $_SESSION[SES_QUALITY]->user_role = $urole;

                    header("Location: Quality_control/index.php");
                    exit();
                } else if ($urole == 'U') {
                    $_SESSION[SES_USER]->log_stat  = "A";
                    $_SESSION[SES_USER]->user_id   = $id;
                    $_SESSION[SES_USER]->full_name = $uname;
                    $_SESSION[SES_USER]->user_name = $uname;
                    $_SESSION[SES_USER]->user_role = $urole;

                    header("Location: User/index.php");
                    exit();
                } else if ($urole == 'F') {
                    $_SESSION[SES_FLEET]->log_stat  = "A";
                    $_SESSION[SES_FLEET]->user_id   = $id;
                    $_SESSION[SES_FLEET]->full_name = $uname;
                    $_SESSION[SES_FLEET]->user_name = $uname;
                    $_SESSION[SES_FLEET]->user_role = $urole;
                    header("Location:Fleet/region_report.php");
                    exit();
                }
                else if ($urole == 'SU') {
                    $_SESSION[SES_SHIPUSER]->log_stat  = "A";
                    $_SESSION[SES_SHIPUSER]->user_id   = $id;
                    $_SESSION[SES_SHIPUSER]->full_name = $uname;
                    $_SESSION[SES_SHIPUSER]->user_name = $uname;
                    $_SESSION[SES_SHIPUSER]->user_role = $urole;
                    $_SESSION[SES_SHIPUSER]->shipid = $rid;
                   // echo 'id'.$rid;exit;
                    header("Location: DE_operator/view_files.php");
                    exit();
                }
                else {

                    exit();
                }
            } else {
                echo "<script>
					alert('Please enter valid password');
					window.location.assign('login.php');
					</script>";
            }
        } else {
            echo "<script>
					alert('Please enter valid login details');
					window.location.assign('login.php');
					</script>";
        }
    }
}
