<?php
include('dynamic.php');

$disp_url = "region_report.php";
$export_url = "project_inv_exp.php";

$region_id="0";
$txtregion="";
$cond="";
$cond="";


if(isset($_GET["v_name"])) $v_name = $_GET["v_name"];
elseif(isset($_POST["v_name"])) $v_name = $_POST["v_name"];
else $v_name = '';

if(isset($_GET["imo_no"])) $imo_no = $_GET["imo_no"];
elseif(isset($_POST["imo_no"])) $imo_no = $_POST["imo_no"];
else $imo_no = '';

if(isset($_GET["f_grp_no"])) $f_grp_no = $_GET["f_grp_no"];
elseif(isset($_POST["f_grp_no"])) $f_grp_no = $_POST["f_grp_no"];
else $f_grp_no = '';




if($v_name!='')
{
	$url_str.="&v_name=$v_name";
    $cond.=" and b.v_name like '%$v_name%' ";
	$flag = true;
}

if($imo_no!='')
{
	$url_str.="&imo_no=$imo_no";
    $cond.=" and b.imo_no like '%$imo_no%' ";
	$flag = true;
}

if($f_grp_no!='')
{
	$url_str.="&f_grp_no=$f_grp_no";
    $cond.=" and b.f_grp_no like '%$f_grp_no%' ";
	$flag = true;
}




$_SESSION[SES_ADMIN]->inv_url_str=$url_str;
$_SESSION[SES_ADMIN]->inv_cond=$cond;

$page = 1;
if((isset($_GET['page']))) 
{
	$page =$_GET['page'];
	$start = ($page - 1) * PAGE_LIMIT; 		//first item to display on this page
	
}
else
	$start = 0;	

//if($cond!='')
{
	$count=GetSingleValue("select count(*) from file_records  where 1 $cond");
	$pagination=GetPagination($page,$count,$disp_url,$url_str);
}

$uid = $_SESSION['FLEET_USER']->user_id;


$q="SELECT v_name,imo_no,flag,f_grp_no,file_records.file_id,
sum(asbestos) as asbestos,sum(pcb) as pcb,sum(ods) as ods,sum(anti_fouling) as anti_fouling,
sum(cd) as cd,sum(pfos) as pfos,sum(cr6) as cr6,sum(pb) as pb,sum(hg) as hg,
sum(pbbs) as pbbs,sum(pbedes) as pbedes,sum(pcns) as pcns,sum(radioactive) as radioactive,
sum(sccps) as sccps,sum(hbccd) as hbccd
 FROM 
`file_records` 
right outer join region_master on file_records.file_id=region_master.file_id 
WHERE region_master.user_id=$uid
group by file_records.file_id";
//echo $q;exit;

$r      = RunQry($q);
$numrow = mysqli_num_rows($r);
$str    = '';
$i=1;
while ($res = mysqli_fetch_assoc($r)) {
$ship = $res['file_id'];

//Hazmat
$qe = "SELECT count(file_id),survey_date FROM `file_records` where file_id = '".$ship."' GROUP by survey_date";
$re      = RunQry($qe);
$n1 = mysqli_num_rows($re);

// Cummulative
$q1 = "SELECT * FROM `file_records` WHERE ((asbestos != '') or (pcb !='') or (ods !='') or (anti_fouling !='') or (pfos != '') or (cd != '') or (cr6 != '') or (pb != '') or (hg != '') or (pbbs != '') or (pbedes != '') or (pcns != '') or (radioactive != '') or (sccps != '') or (hbccd != '')) and file_id ='".$ship."'";
$r1      = RunQry($q1);
$n2 = mysqli_num_rows($r1);
 
//Removed
$q2 = "SELECT * FROM `file_records` WHERE ((asbestos = 0 and asbestos != '') or (pcb=0 and pcb !='') or (ods=0 and ods !='') or (anti_fouling =0 and anti_fouling !='') or (pfos=0 and pfos != '') or (cd =0 and cd != '') or (cr6=0 and cr6 != '') or (pb=0 and pb != '') or (hg=0 and hg != '') or (pbbs=0 and pbbs != '') or (pbedes =0 and pbedes != '') or (pcns=0 and pcns != '') or (radioactive=0 and radioactive != '') or (sccps=0 and sccps != '') or (hbccd=0 and hbccd != '')) and file_id ='".$ship."'";
$r2      = RunQry($q2);
$n3 = mysqli_num_rows($r2);

//Outstanding
$q3 = "SELECT * FROM `file_records` WHERE ((asbestos = 1 and asbestos != '') or (pcb=1 and pcb !='') or (ods=1 and ods !='') or (anti_fouling =1 and anti_fouling !='') or (pfos=1 and pfos != '') or (cd =1 and cd != '') or (cr6=1 and cr6 != '') or (pb=1 and pb != '') or (hg=1 and hg != '') or (pbbs=1 and pbbs != '') or (pbedes =1 and pbedes != '') or (pcns=1 and pcns != '') or (radioactive=1 and radioactive != '') or (sccps=1 and sccps != '') or (hbccd=1 and hbccd != '')) and file_id ='".$ship."'";
$r3      = RunQry($q3);
$n4 = mysqli_num_rows($r3);

	$str .='<tr>';
	$str .= '<td>'.$i.'</td><td><a href="ship_view.php?id='.$ship.'">'.$res['v_name'].'</a></td><td>'.$res['imo_no'].'</td><td>'.$res['flag'].'</td><td>'.$res['f_grp_no'].'</td><td>'.$n1.'</td><td></td><td></td><td></td><td></td><td></td><td>'.$n2.'</td><td>'.$n3.'</td><td>'.$n4.'</td><td>'.$res['asbestos'].'</td><td>'.$res['pcb'].'</td><td>'.$res['ods'].'</td><td>'.$res['anti_fouling'].'</td><td>'.$res['cd'].'</td><td>'.$res['pfos'].'</td><td>'.$res['cr6'].'</td><td>'.$res['pb'].'</td><td>'.$res['hg'].'</td><td>'.$res['pbbs'].'</td><td>'.$res['pbedes'].'</td><td>'.$res['pcns'].'</td><td>'.$res['radioactive'].'</td><td>'.$res['sccps'].'</td><td>'.$res['hbccd'].'</td>';


	$i++;
 }

?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<html lang="en">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
	#textbox{
		width: 140px;
	}
	#left {
            margin-left: 50px;
        }
        #textbox1{
		
		margin-left: 20px;
	}
	#top{
	    margin-top:10px;
	}
</style>
<style>
      .rotate_text
      {
         -moz-transform:rotate(-90deg); 
         -moz-transform-origin: top left;
         -webkit-transform: rotate(-90deg);
         -webkit-transform-origin: top left;
         -o-transform: rotate(-90deg);
         -o-transform-origin:  top left;
          position:relative;
         top:20px;
      }
   </style>
<!--<![endif]-->

   <style>  
      table
      {
         border: 1px solid black;
         table-layout:fixed;
        /*Table width must be set or it wont resize the cells*/
      }
     
      #tb{
      	width: 28px;
      }
      #tb1{
      	width: 100px;
      }
      #tb2{
          width: 60px;
      }
   
    
      .rotated_cell
      {
      	width:100px;
         height:150px;
         vertical-align:bottom;
      }
   </style>
</head>
<?php include('_header.php'); ?>
  <script src="../js1.3/script.js"></script>

  <script type="text/javascript">
	
  
  
 
	</script>


		<?php include('_menu.php');?>

	
		 <div id="row_wrap" >
			<div class="col-sm-15" id="outer">
				
				<div class="col-sm-4" style = "height:110px" id="searchbox" >
                <form method="post" name="frm_search" action="<?php echo $disp_url?>">
              	
					<h5>FILTER BY</h5>
			SHOW ALL<input type="checkbox" name="" value="">
			SHIP NAME:<input type="text" name="vname" value="<?php echo $v_name;?>"  style="width:180px" ><br>
			
               
			IMO No:  <input type="text" name="imono"  value="<?php echo $imo_no;?>" style="width:80px">
			FLEET GROUP NO: <input type="text" name="fgrpno"  value="<?php echo $f_grp_no;?>" style="width:80px">
		</div>
		
	  		
				
				
		<div class="col-sm-4" id="" style="width: 450px; height: 120px;">
				
					<div class="col-sm-9" id="" style="width: 450px; height: 120px; margin-top: 10px;">
				
					<input type="radio"  name="" value="">Select All <br>
					
				 	<input type="radio"  name="" value="">Asbestors 
				 	
					 <input type="radio" id="left" name="" value="">PCB 
					
					<input type="radio" id="left" name="" value=""> ODS 
						<input type="radio" id="left"  name="" value="">Hg <br>  
					<input type="radio" name="" value="">Anti Fouling
					<input type="radio"  name="" value="" style="margin-left: 35px;">PFOs 
					 <input type="radio" id="left1"  name="" value="" style="margin-left: 44px;">Cd  
						<input type="radio" id="left1"  name="" value=""  style="margin-left: 64px;"> PBBS<br> 
					<input type="radio" name="" value="">Sccps
			
					<input type="radio" id="left" name="" value="" style="margin-left: 75px;">Cr6+
				  	<input type="radio" id="left"  name="" value="" style="margin-left: 47px;"> Pb
				  		<input type="radio" id="left"  name="" value="" style="margin-left: 60px;">PBCEDEs<br>
				  
				  
				    
				  	<input type="radio"   name="" value="">PCNs 
				  	 
				  	<input type="radio" id="left"  name="" value="" style="margin-left: 77px;">HBCCD 
				  	<input type="radio" id="left"  name="" value="" style="margin-left: 33px;">Radioactive <br> 
				

				</div>
				

				</div>
					
			
	  		 </div>
	  		
				  <div class="col-lg-2" style = "height:110px" id="searchbox" > 
                <input type="submit" id="textbox" name=""  value="Search">
				<input type="button" id="textbox" name="" value="Reset" onClick="window.location.assign('<?php echo $disp_url ?>')">
				</div>
				
                </form>
         	
               
				</div>
			
					 <button type="button" class="btn btn-default btn-sm" style="margin-left: 1080px; margin-top: 20px;">
          		<span class="glyphicon glyphicon-print"></span> Print
        	</button>
		
				<div class="row">
					<div class="col-sm-11 list_div" style=" overflow: scroll;">
					
					

         
					  <div>
						<table width="100%" align="center" border="0" cellspacing="1" cellpadding="1" class="tbl-cont" >
						  <thead>
							<tr>
							    
							
							<th id="tb">No</th>
   			<th id="tb1" >SHIP NAME</th>
    		<th id="tb1">IMO No</th> 
    		<th id="tb1">FLAG</th>
			<th id="tb1" >FLEET GROUP NO</th>
    		<th class='rotated_cell'  id="tb2"><div class='rotate_text'>Hazmat Survey Done</div></th>  
    		<th id="tb1">Next Survey</th> 
    		<th id="tb1">Next Removal</th> 
    		<th id="tb1">Port of Removal </th> 
    		<th id="tb1">Yard Entry Date</th> 
    		<th id="tb1">Yard Location</th> 
    		<th class='rotated_cell' id="tb2"><div class='rotate_text'>Cummilative Hazmat Found</div></th> 
    		<th class='rotated_cell' id="tb2"><div class='rotate_text'>cummilative Removed</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>Outstanding</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>Asbestos</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>PCB</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>ODS</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>Anti Fouling</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>Cd</div></th> 
    		<th class='rotated_cell' id="tb"><div class='rotate_text'>PFOs</div></div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>Cr6+</div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>Pb</div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>Hg</div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>PBBS</div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>PBCEDEs</div></th> 
			<th class='rotated_cell' id="tb"><div class='rotate_text'>PCNs</div></th> 
			<th class='rotated_cell' id="tb"> <div class='rotate_text'>Radioactive</div></th>
				<th class='rotated_cell' id="tb"> <div class='rotate_text'> Sccps</div></th> 
			<th class='rotated_cell' id="tb">
			    <div class='rotate_text'>HBCCD</div></th>
		
			
							  
							</tr>
								
	
		
							
							
							
							
						  </thead>
						  <tbody>
							  
						 <?php echo $str;?>
						  </tbody>
						</table>
					  
					  
					</div>
				</div>

    
    
	</div>
  </div>
  </div>
  </div>
  
  
 <?php include('_footer.php'); ?>
  

  
</div>


</body>
</html>