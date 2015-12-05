<?php
require '../db/Database.class.php';

$db = new Database;
if ($db->deleteShowTv($_REQUEST['id']) == true)
  echo "success";
else
  echo "error";
?>
