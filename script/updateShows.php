<?php

set_time_limit(300);

require '../class/Database.class.php';
require 'TVMazeIncludes.php';

$Client = new JPinkney\Client;

$db = new Database;
$result = $db->getShowTv();

foreach ($result as $row)
{
	$search = $Client->TVMaze->getShow($row['api_id']);
	$show = $search[0];
	$episodes = $search[1];
	$last_episode = $episodes[count($episodes) - 1];

	$produced_year = date('Y', strtotime($show->premiered));
	$current_season = $last_episode->season;
	$season_finale = $last_episode->airdate;
	
	if (!$db->updateShow($show->imageUrl, $row['id'], $produced_year, $show->name, $show->id, $show->rating, $show->status, $current_season, $season_finale))
		echo $row['name'];
}

echo "success";

?>