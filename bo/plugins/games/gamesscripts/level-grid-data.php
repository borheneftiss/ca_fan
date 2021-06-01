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
    0 =>'id',
    1 =>'gameid',
    2 =>'levelid',
    3 => 'maxscore',

);

// getting total number records without any search


$sql = "SELECT gl.*,g.title  ";
$sql.=" FROM gameslevels gl, games g where g.idgame=gl.gameid ";
$query=mysqli_query($conn, $sql) or die("games-grid-data.php:1 ".$conn->error);
$totalData = mysqli_num_rows($query);
$totalFiltered = $totalData;  // when there is no search parameter then total number rows = total number filtered rows.


$sql = "SELECT gl.*,g.title  ";
$sql.= " FROM gameslevels gl, games g  where 1=1 and g.idgame=gl.gameid ";
if (!empty($requestData['search']['value'])) {   // if there is a search parameter, $requestData['search']['value'] contains search parameter
    $sql.=" AND ( g.title LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR levelid LIKE '".$requestData['search']['value']."%' ";
    $sql.=" OR maxscore LIKE '".$requestData['search']['value']."%' )";
}
$query=mysqli_query($conn, $sql) or die("games-grid-data.php:2 ".$conn->error);
$totalFiltered = mysqli_num_rows($query); // when there is a search parameter then we have to modify total number filtered rows as per search result.
$sql.=" ORDER BY ". $columns[$requestData['order'][0]['column']]."   ".$requestData['order'][0]['dir']."  LIMIT ".$requestData['start']." ,".$requestData['length']."   ";
/* $requestData['order'][0]['column'] contains colmun index, $requestData['order'][0]['dir'] contains order such as asc/desc  */
$query=mysqli_query($conn, $sql) or die("games-grid-data.php:3$sql ".$conn->error);

$data = array();
while ($row=mysqli_fetch_array($query)) {  // preparing an array
    $nestedData=array();

    $nestedData[] = $row["id"];
    $nestedData[] = $row["title"];
    $nestedData[] = $row["levelid"];
    $nestedData[] = $row["maxscore"];
    $nestedData[] = '
	<button class="btn-floating  waves-light brown darken-1"  data-id='.$row["id"].' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="editmodal('.$row["id"].')">
    <i class="material-icons" md-24>edit</i></button>
    <button class="btn-floating  waves-light red darken-1"  data-id='.$row["id"].' style="background:blue;float:left; margin-right:5px; font-size: 18px;" onclick="deletemodal('.$row["id"].')">
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
