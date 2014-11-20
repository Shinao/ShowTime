<?php
require '../class/Database.class.php';

$db = new Database;
if ($db->updateShowDesiredSeason($_REQUEST['id'], $_REQUEST['season']))
  echo "success";
else
  echo "error";
?>
