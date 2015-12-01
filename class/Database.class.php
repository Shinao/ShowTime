<?php

if (session_status() == PHP_SESSION_NONE)
    session_start();

define ("USER_NOT_EXIST", -1);
define ("USER_EXIST_SUCCESS", -2);
define ("USER_EXIST_ERROR", -4);

class Database
{
  private $db; // Instance de PDO

  public function __construct()
  {
    $PARAM_hote = '127.0.0.1';
    $PARAM_port = '3306';
    $PARAM_nom_bd = 'showtime';
    $PARAM_utilisateur = 'root';
    $PARAM_mot_passe = '';

    try
    {
      $pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
      $this->db = new PDO('mysql:host='.$PARAM_hote.';dbname='.$PARAM_nom_bd, $PARAM_utilisateur, $PARAM_mot_passe, $pdo_options);
    }
    catch(PDOException $e)
    {
echo $e->getMessage( ); 
      $this->db = NULL;
    }
  }

  public function addShowTv($api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)
  {
	if ($picture == null) $picture = "";
	if ($rating == null) $rating = "";
	
    $query = $this->db->prepare("INSERT INTO showtv VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

    if (!$query->execute(array($_SESSION['user'], $api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)))
      return false;

    return true;
  }

  public function getShowTv()
  {
    $query = $this->db->prepare("SELECT * FROM showtv WHERE id_user=? ORDER BY id ASC");

    if (!$query->execute(array($_SESSION['user'])))
      return false;

    $result = array();
    while ($row = $query->fetch())
      $result[] = $row;

    return $result;
  }

  public function deleteShowTv($id)
  {
    $query = $this->db->prepare("DELETE FROM showtv WHERE id=? AND id_user=?");

    if (!$query->execute(array($id, $_SESSION['user'])))
      return false;

    return true;
  }

  public function updateShowDesiredSeason($id, $season)
  {
    $query = $this->db->prepare("UPDATE showtv SET desired_season = ? WHERE id = ?");

    if (!$query->execute(array($season, $id)))
      return false;

    return true;
  }

  public function updateShow($id, $api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)
  {
	if ($picture == null) $picture = "";
	if ($rating == null) $rating = "";
	
    $query = $this->db->prepare("UPDATE showtv SET api_id = ?, picture = ?, name = ?, current_season = ?, desired_season = ?, date_season_final = ?, rating = ?, status = ?, produced_year = ? WHERE id = ?");

    if (!$query->execute(array($api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year, $id)))
      return false;

    return true;
  }

  public function checkUser($email, $password)
  {
    // Check user
    $query = $this->db->prepare("SELECT * FROM users WHERE email=?");

    if (!$query->execute(array($email)))
      return false;

    $row = $query->fetch();
    if ($row == array())
      return (USER_NOT_EXIST);

    // Check password
    if ($row['password'] == $password)
      return ($row['id']);

    return (USER_EXIST_ERROR);
  }

  public function addUser($email, $password)
  {
    $query = $this->db->prepare("INSERT INTO users VALUES (DEFAULT, ?, ?)");

    if (!$query->execute(array($email, $password)))
      return false;

    return true;
  }
}

?>
