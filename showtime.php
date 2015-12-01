<?php 
if (session_status() == PHP_SESSION_NONE)
    session_start();

// if (!isset(L
?>
	  <!-- Form logout -->
<small>Connected as <strong><?php echo $_SESSION['email']; ?></strong>, <a href='script/logout.php'>Logout</a>.</small>
</br></br></br>


	  <!-- Form search -->

	  <form id="form-add-showtv" role="form" class="form-inline span9 center">
	    <div class="form-group">
	      <input type="text" class="form-control" id="showtv-name" placeholder="ShowTV Name">
	      <button type="submit" class="btn btn-primary">Add</button>
	      <button type="button" class="btn btn-default refresh">Refresh</button>
	    </div>
	  </form>

	  <!-- Show table -->

	  <div id="movieTableContainer">
	    <div id="tableWrapper" style="width: 100%; ">
	      <table id="vsTable">
		<tbody>
		</tbody>
	      </table>
	    </div>
	  </div>

	  <!-- /!/ Show table -->

    <div id="bridge"></div>

<script type='text/javascript'>
$(document).ready(function()
{
  // Autocompletion when adding a new Show
  $("#showtv-name").focus();
  var options = {
		url: function(name) {
			return "script/getShowsFromName.php?name=" + encodeURIComponent(name);
		},
		getValue: "name",
		requestDelay: 500,
		template: {
			type: "custom",
			method: function(value, item) {
				return "<div class='itemAutocomplete'><img src='" + item.icon + "' /> <div>" + item.name + "<p class=description>" + item.year + " - " + item.rating + "/10</p></div></div>";
			}
		},
		list: {
			onSelectItemEvent: function() {
				
			}
		}
	};
	$("#showtv-name").easyAutocomplete(options);

  function reloadShowTv()
  {
    $.ajax({ url: 'script/getShows.php',
      success: function(data) {
	// Remove all previous row by overriding
	$("table#vsTable tbody").html(data);

	// On hover show delete
	$("table#vsTable tr").each(function() {
	  $(this).hover(
	    function() {
	      $( this ).find("td:last button").css('visibility', '');
	    }, function() {
	      $( this ).find("td:last button").css('visibility', 'hidden');
	    }
	  );
	});

	// Add delete callback
	$("table#vsTable .deleteShowTv").each(function() {
	  $(this).click(
	    function() {
	      var btn = $(this);
	      $.ajax({ url: 'script/delete.php?id=' + $(this).data('id'),
		success: function(data) {
		  if (data == "success")
		    btn.parent().parent().remove();
		  else
		    $.notify("Could not remove the ShowTV", "error");
		}});});});

	      // Add save callback
	      $("table#vsTable .saveShowTv").each(function() {
		$(this).click(
		  function() {
		    var row = $(this).parent().parent();
		    $.ajax({ url: 'script/updateShow.php?season='+ row.find('.spinner').val() +'&id=' + $(this).data('id'),
		      success: function(data) {
			if (data == "success")
			{
			  $.notify("ShowTV updated", "success");
			  reloadShowTv();
			}
			else
			  $.notify("Unable to uptade ShowTV", "error");
		      }});});});
      }
    });
  }

  reloadShowTv();
  
  $.fn.scrollTo = function( target, options, callback ){
  if(typeof options == 'function' && arguments.length == 2){ callback = options; options = target; }
  var settings = $.extend({
    scrollTarget  : target,
    offsetTop     : 50,
    duration      : 500,
    easing        : 'swing'
  }, options);
  return this.each(function(){
    var scrollPane = $(this);
    var scrollTarget = (typeof settings.scrollTarget == "number") ? settings.scrollTarget : $(settings.scrollTarget);
    var scrollY = (typeof scrollTarget == "number") ? scrollTarget : scrollTarget.offset().top + scrollPane.scrollTop() - parseInt(settings.offsetTop);
    scrollPane.animate({scrollTop : scrollY }, parseInt(settings.duration), settings.easing, function(){
      if (typeof callback == 'function') { callback.call(this); }
    });
  });
}

  // Refresh all
  $(".refresh").click(function() {
    $("#loaderImage").css('visibility','visible').hide().fadeIn(500);

    $.ajax({ url: 'script/updateShows.php', success: function(data) {
		if (data != "success")
			$.notify("Oops. Something went wrong when updating TV Shows.", "error");
		else
		{
			$.notify("All Shows Updated", "success");
			reloadShowTv();
		}

		// Fix visibility hidden
		$("#loaderImage").fadeOut(500, function(){
			$("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
		});
	}});

  });

  // Form submit
  $("#form-add-showtv" ).submit(function( event ) {
    $("#loaderImage").css('visibility','visible').hide().fadeIn(500);
    event.preventDefault();

    var name = $("#showtv-name").val();

    $("#showtv-name").val('');

    // Add ShowTV
    $("#bridge").load("script/addShowTv.php?name=" + encodeURIComponent(name), function(response, status, xhr)
    {
		$("#loaderImage").fadeOut(500, function(){
			$("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
		});
		if (status != "success" || response != "success")
		{
			$.notify("Searching information for " + name + " failed.", "error");
			return;
		}
		
		$.notify("Show " + name + " added", "success");

		reloadShowTv();
		$('body').scrollTo('.showtvrow:last');
    });
  });
});
</script>
