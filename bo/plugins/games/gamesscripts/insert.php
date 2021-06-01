<?php
	
	require_once( '../../../../wp-config.php');
	
	require_once( ABSPATH . 'wp-admin/includes/image.php' );
	require_once( ABSPATH . 'wp-admin/includes/file.php' );
	require_once( ABSPATH . 'wp-admin/includes/media.php' );
	
	$game_dir = GAME_UPLOAD_DIR;
	
	
	
	$requestData= $_REQUEST;
	
	
	$JSONObj=new stdClass();
	$JSONObj-> result_type="echec";
	$JSONObj-> result_code="server_error";
	
	$title =$requestData['title'];
	$description =$requestData['description'];
	$visible=$requestData['visible'];
	$status=$requestData['status'];
	$url =$requestData['url'];
	$attachment_id="";
	$maxsizeimg = wp_max_upload_size();
	$file=$_FILES["upload_file"];
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
		
		$attachment_id = media_handle_upload("upload_file", 0,array());
		
		if (is_wp_error($attachment_id))
		{
						
			$JSONObj-> result_code="Server error";				
		    exit (json_encode($JSONObj));
		}       
		
	}
	
	
	if(extension_loaded('zip'))
	{
		$gamefile=$_FILES["game_file"];	
		$target_file = $game_dir . basename($gamefile["name"]) ;	
		$foldername = basename($gamefile["name"],'.zip');
		
		
		if(($gamefile['size']>$maxsizeimg))
		{
			
			
			$JSONObj-> result_code="Game size exceeds max upload limit";				
		    exit (json_encode($JSONObj));
			
		}
		
		
		if (  strtolower(pathinfo($target_file,PATHINFO_EXTENSION))!='zip')
		
		
		{
			
			$JSONObj-> result_code="Game folder must be ZIP compressed";				
		    exit (json_encode($JSONObj));
			
		}
		
		
		
		
		$zip = new ZipArchive;
		move_uploaded_file($gamefile["tmp_name"], $target_file);
		$res = $zip->open($target_file);
		if($res)
		{
			
			/****************  count the nubmer of files in the zip file  ********************************/
			
			/* exit ($zip->getFromIndex(1));
				if (!$zip->getNameIndex(0))
				
				{
				
				exit ($zip->getNameIndex(0));
				
				}
			exit ('ok');*/
			/*********************************************************************************************/
			
			
			/****************  check if folder exsist   ********************************/
			
			$foldername=$zip->getNameIndex(0);
			
			if (substr($foldername, -1)!='/')
			{         
				
				$JSONObj-> result_code="Compressed file must contain game folder";				
		        exit (json_encode($JSONObj));
				
				
			}
			
			$foldername=substr($foldername, 0, -1);
			$sanitized_foldername=filter_var($foldername, FILTER_SANITIZE_URL);
			
			if (file_exists ($game_dir.$sanitized_foldername) || file_exists ($game_dir.$foldername))
			
			{
				
				
				$JSONObj-> result_code="Game folder name already exists".$game_dir.$foldername;				
		        exit (json_encode($JSONObj));
				
			}
			
			
			if (!$zip->locateName($foldername.'/index.html'))
			{
				
				
				
				$JSONObj-> result_code="Game folder must contain index.html file";				
		        exit (json_encode($JSONObj));
			}
			
			$x=$zip->extractTo($game_dir);
			$zip->close();
			
			if (!$x)
			{
			  
				$JSONObj-> result_code="Server error";				
		        exit (json_encode($JSONObj));
			}
			
			
			rename($game_dir.$foldername,$game_dir.$sanitized_foldername);
			
			
			$link ='/'.$sanitized_foldername.'/index.html';
			unlink($target_file);
			
			global $wpdb;
			
			$f= $wpdb->insert( 
			'games', 
			array( 
			'titre'     => $title,
			'description' =>$description,
			'visible' => $visible,   
			'link'    => $link,
			'picture' => $attachment_id,
			'status' => $status
			)
			);
			
			if ($f)
			{
				      
				
				$JSONObj-> result_type="success";
			    $JSONObj-> result_code="Game successfully added";				
		        exit (json_encode($JSONObj));
				
			}else
			{
				
				$JSONObj-> result_code="Server error";
				$JSONObj-> result_message=$wpdb->last_error;			
		        exit (json_encode($JSONObj));
			}
			
			
		}
		else
		{
			
			
			
			$JSONObj-> result_code="Server error";				
		     exit (json_encode($JSONObj));
			
			
			
		}
	}else
	{
		
		
		     $JSONObj-> result_code="No php zip extension";				
		     exit (json_encode($JSONObj));
		
		
		
	}
	
	
	
	
	
?>