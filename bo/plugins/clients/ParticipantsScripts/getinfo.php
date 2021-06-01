<?php
/* Database connection start */


require_once('../../../../wp-config.php');




// storing  request (ie, get/post) global array to a variable  
$requestData= $_REQUEST;
$clientid =$requestData['number'];

$JSONObj=new stdClass();
$JSONObj-> result_type="echec";
$JSONObj-> result_code="Server error";

$sql="SELECT * FROM clients where ID=".$clientid;
$query=$wpdb->get_results($sql);

$data = array();


$nestedData=array(); 
foreach( $query as $row ) {  
	
	
	$nestedData['ID'] = $row->ID;
	$nestedData['email'] = $row->email;
	$nestedData["firstname"] = $row->firstname;
	$nestedData["lastname"] = $row->lastname;
	$nestedData["birthdate"] = $row->birthday;
	$nestedData["city"] = $row->city;
	
	
	
	
	
}
$cards="SELECT p.number as Tel,c.Numero,c.Nbpoint FROM phone p ";
$cards.=" LEFT JOIN card c ON c.Tel=p.number ";
$cards.=" WHERE idclient=".$row->ID;
$querycards=$wpdb->get_results($cards);
$nestedData["cards"] = $querycards;
$JSONObj-> result_type="success";
$JSONObj-> result_code="Player found";	
$JSONObj-> result_content=$nestedData;
echo json_encode($JSONObj);  // send data as json format

?>
