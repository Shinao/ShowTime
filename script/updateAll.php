<?php

set_time_limit(300);

require '../class/Database.class.php';
require 'getSeasonInfo.php';

function updateAllShow()
{
  $db = new Database;
  $result = $db->getShowTv();

  foreach ($result as $row)
  {
    $source = getSource($row['url']);

    echo $row['name'];

    if (getSeasonInfo($source, $current_season, $date_season_final) != true)
      return false;

    echo "<br>";

    if ($db->updateShow($row['id'], $current_season, $date_season_final) != true)
      return false;
  }
  return true;
}

if (updateAllShow())
  echo "success";
else
  echo "error";
?>
