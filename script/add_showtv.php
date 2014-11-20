<?php
require '../class/Database.class.php';
require 'getSeasonInfo.php';

set_time_limit(90);

function getShowTv($name)
{
  // Get tvrage search
  $query = getSource("http://services.tvrage.com/feeds/search.php?show=" . $name);

  // Get showid
  if (preg_match("#showid>(.*?)<#si", $query, $matches) != 1)
    return ("error");

  $url = "http://services.tvrage.com/feeds/full_show_info.php?sid=" . $matches[1];
  // Get show page
  $query = getSource($url);

  // Get name
  if (preg_match("#.*?name>(.*?)<#si", $query, $matches) != 1)
    return ("error");
  $name = $matches[1];

  // Get image
  if (preg_match("#.*?image>(.*?)<#si", $query, $matches) != 1)
    $imgurl = "img/showtime-icon.png";
  else
    $imgurl = $matches[1];

  // season info
  if (getSeasonInfo($query, $current_season, $date) != true)
    return ("error");

  $db = new Database;
  if (!$db->addShowTv($name, $current_season, 1, $date, $url, $imgurl))
    return ("error");

  return ("success");
}

$name = $_REQUEST['name'];
// Replace space by +
$name = str_replace(" ", "+", $name);

echo getShowTv($name);
?>
