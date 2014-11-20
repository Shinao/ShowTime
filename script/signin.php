<?php
session_start();

require '../class/Database.class.php';

$db = new Database;

$status = $db->checkUser($_REQUEST['email'], $_REQUEST['password']);

if ($status == USER_EXIST_ERROR)
{
  echo "error";
  return ;
}

if ($status == USER_NOT_EXIST)
{
  // Create new account
  if (!$db->addUser($_REQUEST['email'], $_REQUEST['password']))
  {
    echo "error";
    return ;
  }
}

$_SESSION['email'] = $_REQUEST['email'];
$_SESSION['user'] = $status;

echo "success";
?>
