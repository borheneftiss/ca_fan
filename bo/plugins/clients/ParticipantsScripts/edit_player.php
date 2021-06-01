<?php
	
	require_once( '../../../../wp-config.php');
	
	
	
	
	$requestData= $_REQUEST;
	
	
	$JSONObj=new stdClass();
	$JSONObj-> result_type="echec";
	$JSONObj-> result_code="Server error";
	
	$editnumber=$requestData['clientid'];
	$editfirstname =$requestData['editfirstname'];
	$editlastname=$requestData['editlastname'];
	$editemail =$requestData['editemail'];
	$editbirthdate =$requestData['editbirthdate'];
	$editcity=$requestData['editcity'];
	
	
	
			
			global $wpdb;
			
			$f= $wpdb->update( 
			'clients', 
			array( 
			'firstname' =>$editfirstname,
			'lastname' => $editlastname,   
			'email'    => $editemail,
			'birthday' => $editbirthdate,
			'city'     => $editcity,
			
			),
			array('ID' => $editnumber)
			);
			
			if ($f)
			{
				
				
				$JSONObj-> result_type="success";
			    $JSONObj-> result_code="Player successfully edited";				
		        exit (json_encode($JSONObj));
				
			}else
			{
				
				$JSONObj-> result_code=$wpdb->last_query;				
		        exit (json_encode($JSONObj));
			}
			
			
		
		
	
	
	
	
	
	
?>