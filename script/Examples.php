<?php
/**
 * User: jpinkney
 * Date: 9/15/15
 * Time: 2:15 PM
 */

require_once 'TVMazeIncludes.php';

/*
 *
 * This always need to be required when using this API
 *
 */

/*
 * Create a new TVMaze Object called TVMaze that will allow us to access all the api's functionality
 */

$Client = new JPinkney\Client;

/*
 * List of some methods that you can use. Others will be included in more formal documentation
 */
//$Client->TVMaze->search("Arrow");
$result = $Client->TVMaze->singleSearch("Fargo");
$TVShow = $result[0];
$episodes = $result[1];

echo "<img src=".$TVShow->imageUrl."></img>";
//$Client->TVMaze->getShowBySiteID("TVRage", 33272);