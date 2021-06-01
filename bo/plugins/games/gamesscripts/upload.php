<?php

require_once( '../const.php');
//require( 'E:\wamp64\www\opera\wp-config.php');
require_once( '../../../../wp-config.php');
require_once( ABSPATH . 'wp-admin/includes/image.php' );
require_once( ABSPATH . 'wp-admin/includes/file.php' );
require_once( ABSPATH . 'wp-admin/includes/media.php' );

function return_bytes($val) {
    $val = trim($val);
    $last = strtolower($val[strlen($val)-1]);
    switch($last) {
        // The 'G' modifier is available since PHP 5.1.0
        case 'g':
            $val *= 1024;
        case 'm':
            $val *= 1024;
        case 'k':
            $val *= 1024;
    }
    
    return $val;
}

// if ( isset( $_POST['my_image_upload_nonce'], $_POST['post_id'] )
// && wp_verify_nonce( $_POST['my_image_upload_nonce'], 'my_image_upload' ) )
if (true)
{
    /* // The nonce was valid and the user has the capabilities, it is safe to continue.
    
    // These files need to be included as dependencies when on the front end.
    require_once( ABSPATH . 'wp-admin/includes/image.php' );
    require_once( ABSPATH . 'wp-admin/includes/file.php' );
    require_once( ABSPATH . 'wp-admin/includes/media.php' );
    
    // Let WordPress handle the upload.
    // Remember, 'my_image_upload' is the name of our file input in our form above.
    $attachment_id = media_handle_upload( 'my_image_upload', $_POST['post_id'] );
    
    if ( is_wp_error( $attachment_id ) ) {
    echo $attachment_id->get_error_message();
    } else {
    // The image was uploaded successfully!
    echo "good";*/
    
    $f=true;
    ini_get('upload_max_filesize');
    update_option('max_file_size',return_bytes(ini_get('upload_max_filesize')));
    $maxsizeimg = get_option('max_file_size');
    //$files = $_FILES["my_image_upload"];
    $files = $_FILES["files"];
    foreach ($files['name'] as $key => $value) {
        if ($files['name'][$key]) {
            $file = array(
                'name' => $files['name'][$key],
                'type' => $files['type'][$key],
                'tmp_name' => $files['tmp_name'][$key],
                'error' => $files['error'][$key],
                'size' => $files['size'][$key]
            );
            $_FILES = array("upload_file" => $file);
            //echo $file['type'];
            if(($file['type'] != 'image/jpeg') && ($file['type'] != 'image/jpg') && ($file['type'] != 'image/png') )
            {
                $error_array[] = array (
                    'name'=> $file['name'],
                    'type_error'=>'extension'
                );
                $f=false;
                
            }
            else if(($file['size']>$maxsizeimg))
            {
                $error_array[] ='error type , please upload: jpg, jpeg, png';
                
                $error_array[] = array (
                    'name'=> $file['name'],
                    'type_error'=>'size'
                );
                $f=false;
                
                
            } else
            {
                $attachment_id = media_handle_upload("upload_file", 0);
                
                if (is_wp_error($attachment_id))
                {
                    // There was an error uploading the image.
                    
                    $f=false;
                }
                else {
                    global $wpdb;
                    $obj=new stdClass();
                    $obj->id=$attachment_id;
                    $obj->src=wp_get_attachment_image_src($attachment_id,array(267,278))[0];
                    $obj->imgname=get_post($attachment_id)->post_title;
                    $data[]=$obj;
                    $wpdb->insert('gallery', array(
                        'AccommodationID' => $_POST['accomodationid'],
                        'PicID' => $attachment_id,
                        'state' => 1,
                    ));
                    
                }
                
                
                
                
                
                
                // The image was uploaded successfully!
                //echo "File added successfully with ID: " . $attachment_id . "<br>";
                //echo wp_get_attachment_image($attachment_id, array(800, 600)) . "<br>"; //Display the uploaded image with a size you wish. In this case it is 800x600
                
                
            }
            
        }
        
        
        
        
        
        
        
        
    }
    
    
    if($f)
    {
        JsonResponseCreate2("success",$data,"");
        
    }else{
        JsonResponseCreate2("error",array(),"");
    }
    
}

function JsonResponseCreate2($status,$data,$message)
{
    $JSONObj=new stdClass();
    if ($status=="success")
    {
        $JSONObj-> status="success";
        $JSONObj-> data =$data;
        
    } else if ($status=="fail")
    {
        $JSONObj-> status="fail";
        $JSONObj-> data =$data;
        
    }
    else if ($status=="")
    {
        $JSONObj-> status="error";
        $JSONObj-> message =$message;
        
    }
    echo json_encode($JSONObj) ;
}

?> 