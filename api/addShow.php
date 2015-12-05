<?php
	require '../db/Database.class.php';
	require '../tvmaze/TVMazeIncludes.php';

	set_time_limit(90);

	$name = $_REQUEST['name'];

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
		echo "success";
	else
		echo "error";

?>
