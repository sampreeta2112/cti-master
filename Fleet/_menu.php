<?php
if($popup!="Y")
{
	?>
	  <title><?php echo $SITE_TITLE?></title>
	  <style>
nav {
  margin-bottom: 20px;
  padding: 24px;
  text-align: center;
  font-family: Raleway;
  box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.5);
}
	 #nav-3 {
  background: #EEA200;
  /* For browsers that do not support gradients */
  background-image: linear-gradient( #ccd9ff 20%,#1a53ff 70%,#0039e6 80%);
}




.link-3 {
  transition: 0.4s;
  color: #ffffff;
  font-size: 16px;
  text-decoration: none;
  padding: 0 10px;
  margin: 0 10px;
}
.link-3:hover {
  background-color: #002080;
  color: #ffffff;
  padding: 24px 10px;
}
</style> 
</head>
 
<body onLoad="noBack();">

	 
	<nav id="nav-3">

                              
                                      <a href="region_report.php" class="link-3">HOME</a>
                                       
                                   
                                         
                                   
                                                
                                      						
                                        
										<a href="region.php" class="link-3">ADD SHIP</a>
                                        
										         
									
                                        
										 <a href="addUser_tab.php"class="link-3">ADD USER</a>
                                       
										
									
                                        <a href="#" class="link-3">HELP</a>
                            
                         
							
   
<a href="#"   class="link-3" title="Change Password" data-toggle="modal" data-target="#configModal"><span class="glyphicon glyphicon-cog"></span> Change Password</a>
	  <a href="logout.php" class="link-3"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
   
  
</nav>

	
	
  <?php
}
?>
	