<?php
	
require_once( '../../../../wp-config.php');
	
header('Access-Control-Allow-Origin: *');	
	
	$dt = new DateTime();
	$datecreation=$dt->format('Y-m-d H:i:s');
	$requestData= $_REQUEST;
	
	
	$JSONObj=new stdClass();
	$JSONObj-> result_type="echec";
	$JSONObj-> result_code="Server error";
	
	global $wpdb;


	
	    if(isset($requestData['newfirstname']) && !empty($requestData['newfirstname']))
	    {
	        $newfirstname =$requestData['newfirstname'];
	        if(isset($requestData['newlastname']) && !empty($requestData['newlastname']))
	        {
	            $newlastname=$requestData['newlastname'];
	            if(isset($requestData['newemail']) && !empty($requestData['newemail']))
	            {
	                $newemail =$requestData['newemail'];
	                             
	                $sqlsearch_email="SELECT * FROM clients WHERE email='".$newemail."'";
	                $res=$wpdb->get_results($sqlsearch_email);
	                $rowcount = $wpdb->num_rows;
	                if($rowcount==0)
	                {                
	                if(isset($requestData['newbirthdate']) && !empty($requestData['newbirthdate']))
	                {
	                $newbirthdate =$requestData['newbirthdate'];
	                }
	                else
	                {
	                    $newbirthdate ='2000-01-01';
	                }
	                
	                if(isset($requestData['newcity']) && !empty($requestData['newcity']))
	                {
	                    $newcity=$requestData['newcity'];
	                }
	                else
	                {
	                    $newcity='Tunis';
	                }
	                $newcin=$requestData['newcin'];
	                
	                
	                
	                
	                
	                $f= $wpdb->insert(
	                    'clients',
	                    array(
	                        
	                        'firstname' =>$newfirstname,
	                        'lastname' => $newlastname,
	                        'cin'=> $newcin,
	                        'email'    => $newemail,
	                        'birthday' => $newbirthdate,
	                        'city'     => $newcity,
	                       
	                        
	                    )
	                    );
						if($wpdb->last_error !== '') {
							$JSONObj-> result_type="echec";
							$JSONObj-> result_code=$wpdb->last_error;
							exit (json_encode($JSONObj));
						}
						else
						{
							$JSONObj-> result_type="success";
							$JSONObj-> result_code="inserted";
							exit (json_encode($JSONObj));
						}
						
	                
	                }
	                else
	                {
	                    $JSONObj-> result_type="echec";
	                    $JSONObj-> result_code="email exist";
	                    exit (json_encode($JSONObj));
	                }
	                
	                
	            }
	            else
	            {
	                $JSONObj-> result_type="echec";
	                $JSONObj-> result_code="email empty";
	                exit (json_encode($JSONObj));
	            }
	            
	        }
	        else
	        {
	            $JSONObj-> result_type="echec";
	            $JSONObj-> result_code="lastname empty";
	            exit (json_encode($JSONObj));
	        }
	    }
	    else
	    {
	        $JSONObj-> result_type="echec";
	        $JSONObj-> result_code="firstname empty";
	        exit (json_encode($JSONObj));
	    }
	
	

	
	
	
	
	
			
			
			
			
		
		
	
	
	
	
	
	
?>