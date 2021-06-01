<?php
/* Database connection start */

require_once('../const.php');

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Connection failed: " . mysqli_connect_error());
mysqli_set_charset($conn, 'utf8');
/* Database connection end */


// storing  request (ie, get/post) global array to a variable
$requestData= $_REQUEST;
global  $wpdb;

$columns = array(
// datatable column index  => database column name
    0 =>'ID',
    1 =>'titre',
    2 =>'description',
    3=> 'visible',
    4=> 'link',
    5=> 'picture',
    6=> 'status',
);

// getting total number records without any search


$sql = "SELECT *  ";
$sql.=" FROM games ";
$query=mysqli_query($conn, $sql) or die("games-grid-data.php: ".$conn->error);
$totalData = mysqli_num_rows($query);
$totalFiltered = $totalData;  // when there is no search parameter then total number rows = total number filtered rows.


$sql = "SELECT *  ";
$sql.= " FROM games  where 1=1 ";
if (!empty($requestData['search']['value'])) {   // if there is a search parameter, $requestData['search']['value'] contains search parameter
    $sql.=" AND ( ID LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR titre LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR description LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR visible LIKE '".$requestData['search']['value']."%' )";
}
$query=mysqli_query($conn, $sql) or die("games-grid-data.php: ".$conn->error);
$totalFiltered = mysqli_num_rows($query); // when there is a search parameter then we have to modify total number filtered rows as per search result.
$sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
/* $requestData['order'][0]['column'] contains colmun index, $requestData['order'][0]['dir'] contains order such as asc/desc  */
$query=mysqli_query($conn, $sql) or die("games-grid-data.php: ".$conn->error);

$data = array();
while ($row=mysqli_fetch_array($query)) {  // preparing an array
    $nestedData=array();

    $nestedData[] = $row["ID"];
    $nestedData[] = $row["titre"];
    $nestedData[] = $row["description"];
    //$nestedData[] = $row["visible"];
    if ($row["visible"]==1) {
        $nestedData[] ="<div class='switch'><label>disabled<input id='editactive_".$row["ID"]."' type='checkbox' onchange='editactivate(".$row["ID"].")' checked> <span class='lever'></span>enabled</label></div>";
    } else {
        $nestedData[] ="<div class='switch'><label>disabled<input id='editactive_".$row["ID"]."' type='checkbox' onchange='editactivate(".$row["ID"].")'><span class='lever'></span>enabled</label></div>";
    }

    $imageurl=wp_get_attachment_image_src($row["picture"], 'full', false)[0];
    $nestedData[] = $row["status"];
    $nestedData[] = "<img style=' width: 50%;' src='$imageurl'>";
    $nestedData[] = $row["link"];
    
    
    $nestedData[] = '
	<button class="btn-floating  waves-light brown darken-1"  data-id='.$row["ID"].' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="editmodal('.$row["ID"].')">
    <i class="material-icons" md-24>edit</i></button>
    <button class="btn-floating  waves-light darken-1"  data-id='.$row["ID"].' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="deletegamemodal('.$row["ID"].')">
    <i class="material-icons" md-24>delete</i></button>
	';
    


    $data[] = $nestedData;
}



$json_data = array(
            "draw"            => intval($requestData['draw']),   // for every request/draw by clientside , they send a number as a parameter, when they recieve a response/data they first check the draw number, so we are sending same number in draw.
            "recordsTotal"    => intval($totalData),  // total number of records
            "recordsFiltered" => intval($totalFiltered), // total number of records after searching, if there is no searching then totalFiltered = totalData
            "data"            => $data   // total data array
            );

echo json_encode($json_data);  // send data as json format
