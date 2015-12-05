<?php 
	if (session_status() == PHP_SESSION_NONE)
		session_start();
?>

<!-- Account details -->
<small>
  Connected as 
  <strong><?php echo $_SESSION['email']; ?></strong>, 
  <a href='api/logout.php'>Logout</a>.
</small>
</br></br></br>

<!-- Form search -->
<form id="form-add-showtv" role="form" class="form-inline span9 center">
  <div class="form-group">
    <input type="text" class="form-control" id="showtv-name" placeholder="ShowTV Name"/>
    <button type="submit" class="btn btn-primary">Add</button>
    <button type="button" class="btn btn-default refresh">Refresh</button>
  </div>
</form>

<!-- Show TVs container -->
<div id="movieTableContainer">
  <div id="tableWrapper" style="width: 100%; ">
    <table id="vsTable">
      <tbody></tbody>
    </table>
  </div>
</div>

<!-- Get Show TVs - Hooks - Etc -->
<script src="js/showtime.js"></script>