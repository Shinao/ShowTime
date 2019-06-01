<?php

require_once '../tvmaze/TVMazeIncludes.php';

$Client = new JPinkney\Client;
$shows = $Client->TVMaze->search($_REQUEST['name']);
$light_shows = array();

foreach ($shows as $show)
{
	$rating = $show->rating == null ? "?" : $show->rating;
	$light_shows[] = array("name" => $show->name, "year" => date('Y', strtotime($show->premiered)), "rating" => $rating, "icon" => $show->imageUrl, "id" => $show->id);
}

echo json_encode($light_shows);

?>