<?php
	require '../db/Database.class.php';

	$db = new Database;

	// Title row
	echo "<tr id='titlerow'>";
	echo "<td class='status' ></td>";
	echo "<td class='jacket title' style='width: 20%; '>Jacket</td>";
	echo "<td class='title' >Name</td>";
	echo "<td class='title' >Current Season</td>";
	echo "<td class='title' >Season Final</td>";
	echo "<td class='title' >Desired Season</td>";
	echo "</tr>";

	if (!($result = $db->getShowTv()) || empty($result))
		echo "<tr class='showtvrow'><td class='status'></td><td colspan=5>No ShowTV found.</td></tr>";
	else
	{
		foreach ($result as $row)
		{
			$date = strtotime($row['date_season_final']);
			if ($date == -3600)
				$date = "Unannounced";
			else
				$date = date('j F Y', $date);
			
			$class_tr     = "";
			$class_status = "";
			if ($row['desired_season'] < $row['current_season'])
				$class_status = "available";
			else if ($row['desired_season'] == $row['current_season'] && $date != "Unannounced")
			{
				$season_final = strtotime($row['date_season_final']);
				$time = time();
				
				if ($time < $season_final && strtotime('+2 week', $time) > $season_final)
					$class_status = "soon";
				else if ($time > $season_final && $time < strtotime('+2 week', $season_final)) {
					$class_status = "new";
					$class_tr     = "available";
				} else if ($time > $season_final)
					$class_status = "available";
			}
			
			$rating = empty($row['rating']) ? "?" : $row['rating'];
			$rating .= "/10";
			echo "<tr class='showtvrow " . $class_tr . "'>";
			echo "<td class='status " . $class_status . "'></td>";
			echo "<td class='jacket'><img src='" . $row['picture'] . "'></td>";
			echo "<td class='text relevant'>" . $row['name'];
			echo "</br><span class='description'>" . $row['produced_year'] . " - " . $rating . " - " . $row['status'] . "</span></td>";
			echo "<td class='text relevant'>" . $row['current_season'] . "</td>";
			echo "<td class='text'>" . $date . "</td>";
			echo "<td class='text'><input type='number' class='spinner' value='" . $row['desired_season'] . "'></td>";
			
			echo "<td class='action'><button data-id='" . $row['id'] . "' style='visibility: hidden;'" .
				"class='btn btn-default deleteShowTv'>Delete</button>" .
				"<button data-id='" . $row['id'] . "' style='visibility: hidden;'" .
				"class='btn btn-default saveShowTv'>Save</button></td></tr>";
		}
	}
?>

