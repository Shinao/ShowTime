<?php
	if (session_status() == PHP_SESSION_NONE)
		session_start();

	// Error codes
	define("USER_NOT_EXIST", -1);
	define("USER_EXIST_SUCCESS", -2);
	define("USER_EXIST_ERROR", -4);

	class Database
	{
		private $db; // PDO Instance
		
		public function __construct()
		{
			$DB_HOST = '127.0.0.1';
			$DB_PORT = '3306';
			$DB_NAME = 'showtime';
			$DB_USER = 'root';
			$DB_PASSWORD = '';
			
			try {
				$pdo_options[PDO::ATTR_ERRMODE] = PDO::ERRMODE_EXCEPTION;
				$this->db = new PDO('mysql:host=' . $DB_HOST . ';dbname=' . $DB_NAME, $DB_USER, $DB_PASSWORD, $pdo_options);
			}
			catch (PDOException $e) {
				echo $e->getMessage();
				$this->db = NULL;
			}
		}
		
		public function addShowTv($api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)
		{
			if ($picture == null)
				$picture = "";
			if ($rating == null)
				$rating = "";
			
			$query = $this->db->prepare("INSERT INTO showtv VALUES (DEFAULT, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
			
			if (!$query->execute(array(
				$_SESSION['user'],
				$api_id,
				$picture,
				$name,
				$current_season,
				$desired_season,
				$date_season_final,
				$rating,
				$status,
				$produced_year
			)))
				return false;
			
			return true;
		}
		
		public function getShowTv()
		{
			$query = $this->db->prepare("SELECT * FROM showtv WHERE id_user=? ORDER BY id DESC");
			
			if (!$query->execute(array(
				$_SESSION['user']
			)))
				return false;
			
			$result = array();
			while ($row = $query->fetch())
				$result[] = $row;
			
			return $result;
		}
		
		public function deleteShowTv($id)
		{
			$query = $this->db->prepare("DELETE FROM showtv WHERE id=? AND id_user=?");
			
			if (!$query->execute(array(
				$id,
				$_SESSION['user']
			)))
				return false;
			
			return true;
		}
		
		public function updateShowDesiredSeason($id, $season)
		{
			$query = $this->db->prepare("UPDATE showtv SET desired_season = ? WHERE id = ?");
			
			if (!$query->execute(array(
				$season,
				$id
			)))
				return false;
			
			return true;
		}
		
		public function updateShow($id, $api_id, $picture, $name, $current_season, $desired_season, $date_season_final, $rating, $status, $produced_year)
		{
			if ($picture == null)
				$picture = "";
			if ($rating == null)
				$rating = "";
			if (empty($date_season_final))
				$date_season_final = "0000-00-00";
			
			$query = $this->db->prepare("UPDATE showtv SET api_id = ?, picture = ?, name = ?, current_season = ?, desired_season = ?, date_season_final = ?, rating = ?, status = ?, produced_year = ? WHERE id = ?");
			
			if (!$query->execute(array(
				$api_id,
				$picture,
				$name,
				$current_season,
				$desired_season,
				$date_season_final,
				$rating,
				$status,
				$produced_year,
				$id
			)))
				return false;
			
			return true;
		}
		
		public function checkUser($email, $password)
		{
			// Check user
			$query = $this->db->prepare("SELECT * FROM users WHERE email=?");
			
			if (!$query->execute(array(
				$email
			)))
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
			
			if (!$query->execute(array(
				$email,
				$password
			)))
				return false;
			
			return true;
		}
	}
?>
