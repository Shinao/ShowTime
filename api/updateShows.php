<?php
	set_time_limit(300);

	require '../db/Database.class.php';
	require '../tvmaze/TVMazeIncludes.php';

	$Client = new JPinkney\Client;

	$db = new Database;
	$result = $db->getShowTv();

	foreach ($result as $row)
	{
		$search = $Client->TVMaze->getShow($row['api_id']);

		// Check Show API_ID deleted from TVDB
		if (strlen($search[0]->id) <= 0) {
			echo "show deleted => " . $row['api_id'];
			var_dump($search);
			continue;
		}

		$show = $search[0];
		$episodes = $search[1];
		$last_episode = $episodes[count($episodes) - 1];

		$produced_year = date('Y', strtotime($show->premiered));
		$current_season = $last_episode->season;
		$season_finale = $last_episode->airdate;
		
		if (!$db->updateShow($row['id'], $show->id, $show->imageUrl, $show->name, $current_season, $row['desired_season'], $season_finale, $show->rating, $show->status, $produced_year))
			echo $row['name'];
	}

	echo "success";
?>