<?php
function getSeasonInfo($query, &$current_season, &$date_season_final)
{
  // Remove special episodes
  $query = preg_replace('#Special.*#s', '', $query);

  echo $query;

  // Get season number and final episode air date
  if (preg_match("#totalseasons>(\d*).*<Season no=\"(.*?)\".*<airdate>(.*?)<#s", $query, $matches) != 1)
    return false;

  $current_season = $matches[1];

  $date = "1970-01-01";
  // Check if last episode is in the last season
  if ($matches[2] == $current_season)
  {
    // Get date in specified format
    $date = str_replace('&#160;', ' ', $matches[3]);
    $date = str_replace(',', ' ', $date);
    $date = str_replace('-00', '??', $date);
    $date = date('Y-m-d', strtotime($date));
  }

  $date_season_final = $date;

  return true;
}

function getSource($url)
{
  set_time_limit(300);

  $curl_handle = curl_init();
  curl_setopt($curl_handle, CURLOPT_URL, $url);
  curl_setopt($curl_handle, CURLOPT_CONNECTTIMEOUT, 100);
  curl_setopt($curl_handle, CURLOPT_TIMEOUT, 100);
  curl_setopt($curl_handle, CURLOPT_USERAGENT, "Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.8.1.13) Gecko/20080311 Firefox/2.0.0.13");
  curl_setopt($curl_handle, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($curl_handle, CURLOPT_HEADER, false);
  curl_setopt($curl_handle, CURLOPT_FOLLOWLOCATION, true);
  $query = curl_exec($curl_handle);
  curl_close($curl_handle);

  return $query;
}

?>
