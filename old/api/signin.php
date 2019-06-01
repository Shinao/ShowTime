<?php
	session_start();

	require '../db/Database.class.php';

	$db = new Database;

	$status = $db->checkUser($_REQUEST['email'], $_REQUEST['password']);

	if ($status == USER_EXIST_ERROR) {
		echo "invalid password";
		return;
	}

	// Create automatically a new account
	if ($status == USER_NOT_EXIST) {
		if (!$db->addUser($_REQUEST['email'], $_REQUEST['password'])) {
			echo "could not create a new account";
			return;
		}
	}

	$_SESSION['email'] = $_REQUEST['email'];
	$_SESSION['user']  = $status;

	echo "success";
?>