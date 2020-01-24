<?php
include('dynamic.php');

$url_str=$_SESSION[SES_ADMIN]->region_url_str;

$disp_url = "region.php"."?page=1".$url_str;
$edit_url = "region_edit.php";

if(isset($_GET["mode"])) $mode = $_GET["mode"];
else if(isset($_POST["mode"])) $mode = $_POST["mode"];
else $mode = 'A';

if(isset($_GET["id"])) $txtid = $_GET["id"];
else if(isset($_POST["txtid"])) $txtid = $_POST["txtid"];
else $txtid = '0';

if($mode == 'A')
{
	$region_name='';
	$x_imo ='';
							$x_flag ='';
							$x_grp_no ='';
						
	$form_mode = "I";
	
}

elseif($mode == 'I')
{
	$txtid = NextID("file_id", "region_master");
	$file_id=post_val($_POST['file_id']);
	$region_name=post_val($_POST['v_name']);
	$x_imo=post_val($_POST['imo_no']);
	$x_flag=post_val($_POST['flag']);
	$x_grp_no=post_val($_POST['f_grp_no']);
	
	
	
	$pfile=$_FILES['uploaded'];
	$pfile_cnt=count($_FILES['uploaded']['name']);
		
	$target_dir = "../media/";
	
	$media_up_cnt=0;
	
	for($counter=0;$counter<$pfile_cnt;$counter++)
	{
		//print_r($pfile);
		$pfile_nm = $_FILES['uploaded']['name'][$counter];
		
		if($pfile_nm!='')
		{
			
			$target_file = $target_dir . basename( $_FILES['uploaded']['name'][$counter]);
			$ext=pathinfo($target_file,PATHINFO_EXTENSION);
			$file_ext = strtoupper($ext);
			
			if(($file_ext=="PNG")||($file_ext=="JPG"))
			{
				
					$tag=$_POST['tag'];
					//get file name without suffix
					$fileuni = str_pad($fileid, 5, '0', STR_PAD_LEFT);
					$myname="FILE".$fileuni."_".$file_name."_".$tag[$counter];
					$rootname = $myname.".".$ext;
					$target_file= $target_dir.$rootname;
					
				
				
				$target_file = str_replace(" ","_",$target_file);
				
				
			
				if(move_uploaded_file($_FILES['uploaded']['tmp_name'][$counter],$target_file))
				{

					$att_id=NextID("att_id","attachments");
					$query="insert into attachments values ($att_id,'$fileid','$target_file','$tag[$counter]')";
					RunQry($query);
					$txtid_arr[]=$txtid;
					$media_up_cnt++;
					//uploadding path goes below
					unlink("../../../../Users/Go it way 10/Pictures/MP Navigator EX/".$pfile_nm);
				}
			}
		}
	}
	
	$txtid = NextID("file_id", "region_master");
	//$file_id=post_val($_POST['file_id']);
	$region_name=post_val($_POST['v_name']);
	$x_imo=post_val($_POST['imo_no']);
	$x_flag=post_val($_POST['flag']);
	$x_grp_no=post_val($_POST['f_grp_no']);

	$uid = $_SESSION['FLEET_USER']->user_id;
				if($media_up_cnt>0)
				{
					$sql="insert into region_master values( '$txtid','$region_name','$x_imo','$x_flag','$x_grp_no','$uid')";
					RunQry($sql);
					
					echo "<script type='text/javascript'>
					alert('".$media_up_cnt." File(s) added successfully');
					</script>";
				}
				else
				{
					echo "<script type='text/javascript'>
						alert('Error in adding tracks');
						</script>";
				}
	
		$loc_str = $disp_url;
	
	
	echo "<script>
			window.location.assign('".$loc_str."');
			</script>";
}

	
	
	
			//$q = "insert into region_master values( '$txtid','$file_id','$region_name','$x_imo','$x_flag','$x_grp_no')"; 
			//echo $q; exit();
			//$r = RunQry($q);
			
		

elseif($mode == 'E')
{
	$region_name='';
	$x_imo ='';
							$x_flag ='';
							$x_grp_no ='';
						
	$form_mode = "I";
	
	$q = "select * from region_master where r_id=$txtid";
	
	$r = RunQry($q);
	if(!mysqli_num_rows($r))
	{
		header("location: $edit_url");
		exit;
	}
	$o = mysqli_fetch_object($r);
	

	$region_name = $o->v_name;
							$x_imo = $o->imo_no;
							$x_flag = $o->flag;
							$x_grp_no = $o->f_grp_no;
						
	$form_mode = "U";
	
}

elseif($mode == 'U')
{
	$region_name=post_val($_POST['region_name']);
	$x_imo = $o->imo_no;
							$x_flag = $o->flag;
							$x_grp_no = $o->f_grp_no;
	
     $q = "Update region_master set v_name = '$region_name',imo_no = '$x_imo',flag = '$x_flag',f_grp_no = '$x_grp_no' where r_id = '$txtid'";
		//echo $q; exit();
		$r = RunQry($q);
		
		if($r)
			{
				echo "<script type='text/javascript'>
					alert('SHIP UPDATE successfully');
					</script>";
			}
			else
			{
				echo "<script type='text/javascript'>
					alert('Error in updating Region type');
					</script>";
			}
	
}
	
if($mode == "I" || $mode == "U")
{
	
	$loc_str = $edit_url."?mode=E&id=$txtid";

	
	echo "<script>
			window.location.assign('".$loc_str."');
			</script>";
	exit;
}	


?>
<html lang="en">
<head>
<?php include('_header.php'); ?>
  <script src="../js1.3/script.js"></script>
  <script language="JavaScript" type="text/javascript">
  
	
	</script>
  <script language="JavaScript" type="text/javascript">

function launchscanner()
{
	$.ajax({
					url: "fileopendemo.php",
					type: "POST",
					data: "",
					success: function(res) {
						//$("#dp_display").attr('src',res);
						//$("#dp_display").click(function(){
						//	$("#dp_upload").trigger("click");
					//	});
						//alert(res);
						return false;
					}
					});
}
	updateList = function() {
	  var input = document.getElementById('uploaded');
	  var output = document.getElementById('fileList');

	  output.innerHTML = '';
	  for (var i = 0; i < input.files.length; ++i) {
		output.innerHTML += '<div class="form-group"><label>File Name: ' + input.files.item(i).name + '</label><input type="number" class="form-control" id="tag'+i+'" name="tag[]" value="" placeholder="Page no" required /></div>';
		
		
		
		
	  }
	  output.innerHTML += '<table width="100%"><tr><td width="50%"><input type="submit" class="btn btn-info btn-md" id="task_update" name="submit" value="Save"></td><td width="50%"><a href="view_files.php" class="btn btn-info btn-md">Cancel</a></td></tr></table>';
	}
	
$(document).ready(function(){
	$("form").on('submit', function (e) {
  	 
 		 
   			 if (( $('#para1').val() === '' )&&( $('#para2').val() === '' )&&( $('#para3').val() === '' )&&( $('#para4').val() === '' ))
        		
        		{
        			alert("Please Fill Atleast 1 Parameter");
        				e.preventDefault();
        		}
        		var values = [];
        		var count=$("input[type=number][name='tag[]']").length;
        		
				$("input[type=number][name='tag[]']").each(function () {
				    if ($.inArray(this.value, values) >= 0) {

				        alert('Page numbers must be unique.');
				        e.preventDefault();

				        return false; // <-- stops the loop
				    }
					values.push(this.value);
					
				});
				$(values).each(function () {
				   if(this==0)
				   {
				   	alert("Page number cannot be zero");
				   	e.preventDefault();
				   }
				  if(this>count)
				   {
				   	alert("Page number exceeds number of pages ");
				   	e.preventDefault();
				   }
					
				});
				 var input = document.getElementById('uploaded');
				var flag=0;
 for (var i = 0; i < input.files.length; ++i) 
 {
 	 var filename = input.files.item(i).name;

        // Use a regular expression to trim everything before final dot
        var extension = filename.replace(/^.*\./, '');

        // Iff there is no dot anywhere in filename, we would have extension == filename,
        // so we account for this possibility now
        if (extension == filename) {
            extension = '';
        } else {
            // if there is an extension, we convert to lower case
            // (N.B. this conversion will not effect the value of the extension
            // on the file upload.)
            extension = extension.toLowerCase();
        }

        switch (extension) {
            case 'jpg':
            case 'jpeg':
            case 'png':
                

            // uncomment the next line to allow the form to submitted in this case:
         break;

            default:
                // Cancel the form submission
               flag=1;
        }
 }
 if(flag==1)
 {
 	alert("choose proper file types");
 	e.preventDefault();
 }
				        // get the file name, possibly with path (depends on browser)
       

				
});
	$(".datepicker").datepicker({
		 dateFormat: 'yy-mm-dd'
	});
});	
</script>
  
  
  
<?php include('_menu.php');?>
	
		 <div id="row_wrap">
			<form action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post"  enctype="multipart/form-data">
				<input type="hidden" name="txtid" id="txtid" value="<?php echo $txtid; ?>">
				<input type="hidden" name="mode" id="mode" value="<?php echo $form_mode; ?>">
				<div class="col-sm-5">
				
				
				
				<input type="hidden" name="mode" id="mode" value="I">
				
		 <div id="row_wrap">
			<div class="row"> 
				<div class="col-sm-8"> 	
					<div class="form-group">
						<label>SHIP NAME:</label>
						<input type="text"  class="form-control" id="para1" name="v_name" value="" placeholder="SHIP NAME."  />
					</div>
				
				<br>
				
				<div class="form-group">
						<label>IMO No:</label>
						<input type="text" class="form-control" id="para2" name="imo_no" value="" placeholder="IMO No"  />
					</div> 
			
				<br>
				<div class="form-group">
				FLAG: <select name="flag">
    	<option value="GERMANY">GERMANY</option>
	    <option value="FRANCE">FRANCE</option>
	    <option value="SINGAPORE">SINGAPORE</option>
	    <option value="LIBERIA">LIBERIA</option>
	</select><br>
				
				
		
				
				
				</div>
			
			<br>
			
				
				<div class="form-group">
						<label> FLAG GROUP NO:</label>
						<input type="text" class="form-control" id="para4" name="f_grp_no" value="" placeholder=" "  />
						
						
						
					
				</div>
				<div class="col-sm-7"> 
					<div class="">
						<div class="Uploadbtn" style="border:1px solid #ccc;min-height:78px;height:14%;width:90%;padding:2%;">
						  <input name="uploaded[]" accept="image/*" id="uploaded" multiple required type="file"  class="input-upload" onchange="javascript:updateList()" />
						  <span>Drop files here <br>or <br>click to browse your computer.</span>
						</div>
          <div class="col-sm-12" id="fileList">
				
				
							
				</div>
       
	
		</tr>
		</table>
				</div>
				
			</form>
		</div>
		</div>
		</div>

		<?php include('_footer.php'); ?>
		
	</div>
<?php

?>
</body>
</html>
	
<?php	
	

?>