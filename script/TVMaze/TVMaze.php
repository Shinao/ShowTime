<?php

namespace JPinkney\TVMaze;

class TVMaze {

	CONST APIURL = 'http://api.tvmaze.com';

	/**
	 * Takes in a show name
	 * Outputs array of all the related shows for that given name
	 *
	 * @param $show_name
	 *
	 * @return array
	 */
	function search($show_name){
		$url = self::APIURL."/search/shows?q=".$show_name;

		$shows = $this->getFile($url);

		$relevant_shows = array();
		foreach($shows as $series){
			$TVShow = new TVShow($series['show']);
			array_push($relevant_shows, $TVShow);
		}
		return $relevant_shows;
	}

	private function createShowWithEpisodes($url)
	{
		$shows = $this->getFile($url);

		$episode_list = array();
		foreach($shows['_embedded']['episodes'] as $episode){
			$ep = new Episode($episode);
			array_push($episode_list, $ep);
		}

		$TVShow = new TVShow($shows);

		return array($TVShow, $episode_list);
	}
	
	/**
	 * Takes in a show id
	 * Outputs array of the show and his associated episodes
	 *
	 * @param $show_id
	 *
	 * @return array
	 */
	function getShow($show_id){

		$url = self::APIURL."/shows/".$show_id."?embed=episodes";
		
		return $this->createShowWithEpisodes($url);
	}
	
	
	/**
	 * Takes in a show name with optional modifiers (episodes)
	 * Outputs array of the MOST related shows for that given name
	 *
	 * @param $show_name
	 *
	 * @return array
	 */
	function singleSearch($show_name){

		$url = self::APIURL."/singlesearch/shows?q=".$show_name.'&embed=episodes';
		
		return $this->createShowWithEpisodes($url);
	}

	/**
	 * Allows show lookup by using TVRage or TheTVDB ID
	 * site is the string of the website (either 'tvrage' or 'thetvdb') and the id is the id of the show on that respective site
	 *
	 * @param $site
	 * @param $ID
	 *
	 * @return TVShow
	 */
	function getShowBySiteID($site, $ID){
		$site = strtolower($site);
		$url = self::APIURL.'/lookup/shows?'.$site.'='.$ID;
		$show = $this->getFile($url);

		return new TVShow($show);
	}

	/**
	 * Takes in an actors name and outputs their actor object
	 *
	 * @param $name
	 *
	 * @return array
	 */
	function getPersonByName($name){
		$name = strtolower($name);
		$url = self::APIURL.'/search/people?q='.$name;
		$person = $this->getFile($url);

		$people = array();
		foreach($person as $peeps){
		array_push($people, new Actor($peeps['person']));
		}

		return $people;
	}

	/**
	 * TODO: this still needs to be done
	 *
	 * @param null $country
	 * @param null $date
	 *
	 * @return array
	 */
	function getSchedule($country=null, $date=null){
		if($country != null && $date != null){
			$url = self::APIURL . '/schedule?country=' . $country .'&date='. $date;
		}else if($country == null && $date != null){
			$url = self::APIURL . '/schedule?date=' . $date;
		}else if($country != null && $date == null){
			$url = self::APIURL . '/schedule?country=' . $country;
		}else{
			$url = self::APIURL . '/schedule';
		}

		$schedule = $this->getFile($url);

		$show_list = array();
		foreach($schedule as $episode){
			$ep = new Episode($episode);
			$show = new TVShow($episode['show']);
			array_push($show_list, $show, $ep);
		}

		return $show_list;
	}

	/**
	 * Takes in a show ID and outputs the TVShow Object
	 *
	 * @param      $ID
	 * @param null $embed_cast
	 *
	 * @return array
	 */
	function getShowByShowID($ID, $embed_cast=null){
		if($embed_cast === true){
			$url = self::APIURL.'/shows/'.$ID.'?embed=cast';
		}else{
			$url = self::APIURL.'/shows/'.$ID;
		}

		$show = $this->getFile($url);

		$cast = array();
		foreach($show['_embedded']['cast'] as $person){
			$actor = new Actor($person['person']);
			$character = new Character($person['character']);
			array_push($cast, array($actor, $character));
		}

		$TVShow = new TVShow($show);

		return $embed_cast === true ? array($TVShow, $cast) : array($TVShow);
	}

	/**
	 * Takes in a show ID and outputs all the episode objects for that show in an array
	 *
	 * @param $ID
	 *
	 * @return array
	 */
	function getEpisodesByShowID($ID){

		$url = self::APIURL.'/shows/'.$ID.'/episodes';

		$episodes = $this->getFile($url);

		$allEpisodes = array();
		foreach($episodes as $episode){
			$ep = new Episode($episode);
			array_push($allEpisodes, $ep);
		}

		return $allEpisodes;
	}

	/**
	 * Takes in a show ID and outputs all of the cast members in the form (actor, character)
	 *
	 * @param $ID
	 *
	 * @return array
	 */
	function getCastByShowID($ID){
		$url = self::APIURL.'/shows/'.$ID.'/cast';
		$people = $this->getFile($url);

		$cast = array();
		foreach($people as $person){
			$actor = new Actor($person['person']);
			$character = new Character($person['character']);
			array_push($cast, array($actor, $character));
		}

		return $cast;
	}

	/**
	 * Gets a list of all shows in the database. Page number is optional (caps display at 250 results)
	 *
	 * @param null $page
	 *
	 * @return array
	 */
	function getAllShowsByPage($page=null){
		if($page == null){
			$url = self::APIURL.'/shows';
		}else{
			$url = self::APIURL.'/shows?page'.$page;
		}

		$shows = $this->getFile($url);

		$relevant_shows = array();
		foreach($shows as $series){
			$TVShow = new TVShow($series);
			array_push($relevant_shows, $TVShow);
		}
		return $relevant_shows;
	}

	/**
	 * Gets an actor by their ID
	 *
	 * @param $ID
	 *
	 * @return Actor
	 */
	function getPersonByID($ID){
		$url = self::APIURL.'/people/'.$ID;
		$show = $this->getFile($url);
		return new Actor($show);
	}

	/**
	 * Gets an array of all the shows a particular actor has been in
	 *
	 * @param $ID
	 *
	 * @return array
	 */
	function getCastCreditsByID($ID){
		$url = self::APIURL.'/people/'.$ID.'/castcredits?embed=show';
		$castCredit = $this->getFile($url);

		$shows_appeared = array();
		foreach($castCredit as $series){
			$TVShow = new TVShow($series['_embedded']['show']);
			array_push($shows_appeared, $TVShow);
		}
		return $shows_appeared;
	}

	/**
	 * Gets the position worked at the tv show in a tuple with the tvshow
	 *
	 * @param $ID
	 *
	 * @return array
	 */
	function getCrewCreditsByID($ID){
		$url = self::APIURL.'/people/'.$ID.'/crewcredits?embed=show';
		$crewCredit = $this->getFile($url);

		$shows_appeared = array();
		foreach($crewCredit as $series){
			$position = $series['type'];
			$TVShow = new TVShow($series['_embedded']['show']);
			array_push($shows_appeared, array($position, $TVShow));
		}
		return $shows_appeared;
	}

	/**
	 * Function used to get the data from the URL and return the results in an array
	 *
	 * @param $url
	 *
	 * @return mixed
	 */
	private function getFile($url){
		$json = file_get_contents($url);

		$shows = json_decode($json, TRUE);

		return $shows;
	}

};


?>