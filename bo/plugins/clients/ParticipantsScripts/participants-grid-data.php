<?php
/* Database connection start */

require_once('../../../../wp-config.php');



// storing  request (ie, get/post) global array to a variable
$requestData= $_REQUEST;
global  $wpdb;

$columns = array(
// datatable column index  => database column name
    0 =>'num_tel',
  1 =>'email',
    2=> 'firstname',
    3 =>'lastname',
   4 =>'birthdate',
    5=> 'age',


);



$sql="SELECT * FROM clients";
$query=$wpdb->get_results($sql);
$totalData = $wpdb->num_rows;
$totalFiltered = $totalData;  // when there is no search parameter then total number rows = total number filtered rows.


$sql = "SELECT *  FROM clients";
$sql.= " WHERE  1=1 ";

if (!empty($requestData['search']['value'])) {   // if there is a search parameter, $requestData['search']['value'] contains search parameter
    
    $sql.=" OR telephone LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR firstname LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR lastname LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR birthday LIKE '".$requestData['search']['value']."%' ";
    
}
$query=$wpdb->get_results($sql);
$totalFiltered = $wpdb->num_rows; // when there is a search parameter then we have to modify total number filtered rows as per search result.
$sql.= " ORDER BY date_creation DESC ";
$sql.="  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
$query=$wpdb->get_results($sql);
if($wpdb->last_error !== '')
{
    $error= $wpdb->last_error.$sql;
}

else
{




$data = array();
$datasession = array();


foreach($query as $row){
    $nestedData=array();
    $id=$row->ID;
    $nestedData[] = $row->ID;
    $nestedData[] = $row->firstname;
    $nestedData[] = $row->lastname;
    $nestedData[] = $row->birthday;
    $nestedData[] = $row->email;

    $nestedData[] = $row->city;
    
    $nestedData[] = $row->cin;
    
    
    $nestedData[] = '
    <button class="btn-floating  waves-light green darken-1"  data-id='.$id.' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="ficheclientmodal('.$id.')">
    <i class="material-icons" md-24>visibility</i></button>
	<button class="btn-floating  waves-light brown darken-1"  data-id='.$id.' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="editmodal('.$id.')">
    <i class="material-icons" md-24>edit</i></button>
	';

    $data[] = $nestedData;
}

}

$json_data = array(
            
            "draw"            => intval($requestData['draw']),   // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw.
            "recordsTotal"    => intval($totalData),  // total number of records
            "recordsFiltered" => intval($totalFiltered), // total number of records after searching, if there is no searching then totalFiltered = totalData
            "data"            => $data,   // total data array
            "datasql"			=> $sql,
            "error"			=> $error
            );


echo json_encode($json_data);  // send data as json format
        