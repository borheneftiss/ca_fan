<?php
/* Database connection start */
require_once('../const.php');

$conn = mysqli_connect($servername, $username, $password, $dbname) or die("Connection failed: " . mysqli_connect_error());
mysqli_set_charset($conn, 'utf8');
/* Database connection end */
$requestData= $_REQUEST;



if ($conn->connect_error) {
    die("0");
}

$sql ="UPDATE  games SET visible = IF(visible = 1, 0, 1) WHERE ID=" . $requestData['ID'].";";
//die($sql);
 if ($conn->query($sql) === true) {
     echo "1" ;
 } else {
     echo "0";
 }
