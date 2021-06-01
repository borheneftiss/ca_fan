<?php
	
	require_once( '../../../../wp-config.php');
	
	require_once( ABSPATH . 'wp-admin/includes/image.php' );
	require_once( ABSPATH . 'wp-admin/includes/file.php' );
	require_once( ABSPATH . 'wp-admin/includes/media.php' );
	
	$requestData= $_REQUEST;
	
	$id =$requestData['ID'];
	$title =$requestData['title'];
	$description =$requestData['description'];
	$status =$requestData['status'];
	
	$JSONObj=new stdClass();
	$JSONObj-> result_type="echec";
	$JSONObj-> result_code="Server error";	
	
	
	$attachment_id=null;
	$file=$_FILES["up_upload_file"];
	global $wpdb;
	if (empty($file))
	{
		
		
		
		$wpdb->update( 
		'games', 
		array( 
        'titre'     => $title,
		'description'=> $description,
		'status'=> $status,
		
		),
		array('ID'=>$id)
		);
		
		
		
		
		if ($wpdb->last_error!="")
		{
			$JSONObj-> result_code="Server error";					
		    exit (json_encode($JSONObj));
			
		}else
		{
			    $JSONObj-> result_type="success";
			    $JSONObj-> result_code="Game successfully updated";				
		        exit (json_encode($JSONObj));
			
		}
	}else
	{
		
		$maxsizeimg = wp_max_upload_size();
		
		
		if(($file['type'] != 'image/jpeg') && ($file['type'] != 'image/jpg') && ($file['type'] != 'image/png') )
		{
			$JSONObj-> result_code="Incorrect image file type";				
		    exit (json_encode($JSONObj));
			
		}
		else if(($file['size']>$maxsizeimg))
		{
			
			$JSONObj-> result_code="Image size exceeds max upload limit";				
		    exit (json_encode($JSONObj));
			
			
		} else
		{
			
			$attachment_id = media_handle_upload("up_upload_file", 0,array());
			
			if (is_wp_error($attachment_id))
			{
							
			$JSONObj-> result_code="Server error";				
		    exit (json_encode($JSONObj));
			}       
			
		}
		
		$wpdb->update( 
		'games', 
		array( 
        'titre'     => $title,
        'description'=> $description,
		'picture'=> $attachment_id,
		'status'=> $status,
		),
		array('ID'=>$id)
		);
		
		
		if ($wpdb->last_error!="")
		{
			$JSONObj-> result_code="Server error";					
		    exit (json_encode($JSONObj));
			
		}else
		{
			    $JSONObj-> result_type="success";
			    $JSONObj-> result_code="Game successfully updated";				
		        exit (json_encode($JSONObj));
			
		}
		
		
	}	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
?>