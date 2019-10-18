<?php
include('../includes/config.php');
$subject_id = "POST['id']";
//echo $subject_id;
$qry = "DELETE FROM tblsubjects WHERE id ='$subject_id'";
$result=mysql_query($qry);
if(isset($result)) {
    echo "YES";
 } else {
    echo "NO";
 }
?>