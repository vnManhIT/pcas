<?php
require_once ("../ini.inc.php");
require_once ("../includes".CC_DS."global.inc.php");
require_once ("../includes".CC_DS."functions.inc.php");
require_once ("../classes".CC_DS."db".CC_DS."db.php");
require_once ("../classes".CC_DS."cache".CC_DS."cache.php");
$db = new db();

//If directory doesnot exists create it.
$output_dir = CC_ROOT_DIR."/uploads/customerprofile/";

if(isset($_FILES["myfile"])){
	$ret = array();
	$error =$_FILES["myfile"]["error"];
   {    
    	if(!is_array($_FILES["myfile"]['name'])) //single file
    	{
            $RandomNum   = time();
            
            $ImageName      = str_replace(' ','-',strtolower($_FILES['myfile']['name']));
            $ImageType      = $_FILES['myfile']['type']; //"image/png", image/jpeg etc.         
            $ImageExt 		= substr($ImageName, strrpos($ImageName, '.'));
            $ImageExt       = str_replace('.','',$ImageExt);
            $ImageName      = preg_replace("/\.[^.\s]{3,4}$/", "", $ImageName);
            $NewImageName 	= $RandomNum.'.'.$ImageExt;

       	 	if(move_uploaded_file($_FILES["myfile"]["tmp_name"],$output_dir. $NewImageName)){
       	 	 //echo "<br> Error: ".$_FILES["myfile"]["error"];
       	 	 	//$data['session_id']  = $db->mySQLSafe($_REQUEST['user']);
				//$data['customerId']  = $db->mySQLSafe($cc_session->ccUserData['customer_id']);
				$data['cover_photo'] = $db->mySQLSafe($NewImageName);
				$where 				 = "customer_id = ".$db->mySQLSafe($_REQUEST['user']);
				$status 			 =  $db->update($glob['dbprefix']."ImeiUnlock_customer",$data,$where);		
	       	 	$ret[$fileName]		 = $output_dir.$NewImageName;
				
			}
    	}
    }
    echo json_encode($ret); 
}
$db->close();
?>