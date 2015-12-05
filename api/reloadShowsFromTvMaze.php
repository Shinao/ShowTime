<?php
	set_time_limit(300);

	require '../db/Database.class.php';
	require '../tvmaze/TVMazeIncludes.php';

	$Client = new JPinkney\Client;

	$db = new Database;
	$result = $db->getShowTv();

	foreach ($result as $row)
	{
		$search = $Client->TVMaze->singleSearch($row['name']);
		$show = $search[0];
		$episodes = $search[1];
		$last_episode = $episodes[count($episodes) - 1];

		$produced_year = date('Y', strtotime($show->premiered));
		$current_season = $last_episode->season;
		$season_finale = $last_episode->airdate;
		$id, $api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)
		if (!$db->updateShow($row['id'], $show->id, $show->imageUrl, $show->name, $current_season, 1, $season_finale, $show->rating, $show->status, $produced_year))
			echo $row['name']."=>FAILED";
		else
			echo $row['name']."=>SUCCESS";
		echo "<br>";
	}
?>