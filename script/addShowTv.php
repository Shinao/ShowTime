<?php
require '../class/Database.class.php';
require 'TVMazeIncludes.php';

set_time_limit(90);



function addShowTv($name)
{
	$db = new Database;

	$Client = new JPinkney\Client;
	$search = $Client->TVMaze->singleSearch($name);
	$show = $search[0];
	$episodes = $search[1];
	$last_episode = $episodes[count($episodes) - 1];

	$produced_year = date('Y', strtotime($show->premiered));
	$current_season = $last_episode->season;
	$season_finale = $last_episode->airdate;
	
	if ($db->addShowTv($show->id, $show->imageUrl, $show->name, $current_season, 1, $season_finale, $show->rating, $show->status, $produced_year))
		return ("success");
	else
		return ("error");
}

$name = $_REQUEST['name'];

echo addShowTv($name);
?>
