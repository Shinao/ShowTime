$(document).ready(function() {
    // Autocompletion when adding a new Show
    $("#showtv-name").focus();
    var options = {
        url: function(name) {
            return "api/getShowsFromName.php?name=" + encodeURIComponent(name);
        },
        getValue: "name",
        requestDelay: 500,
        template: {
            type: "custom",
            method: function(value, item) {
                return "<div class='itemAutocomplete'><img src='" + item.icon + "' /> <div>" + item.name + "<p class=description>" + item.year + " - " + item.rating + "/10</p></div></div>";
            }
        }
    };
    $("#showtv-name").easyAutocomplete(options);

    function reloadShowTv() {
        $.ajax({
            url: 'api/getShows.php',
            success: function(data) {
                // Remove all previous row by overriding
                $("table#vsTable tbody").html(data);

                // On hover show delete
                $("table#vsTable tr").each(function() {
                    $(this).hover(
                        function() {
                            $(this).find("td:last button").css('visibility', '');
                        },
                        function() {
                            $(this).find("td:last button").css('visibility', 'hidden');
                        }
                    );
                });

                // Add delete callback
                $("table#vsTable .deleteShowTv").each(function() {
                    $(this).click(
                        function() {
                            var btn = $(this);
                            $.ajax({
                                url: 'api/deleteShow.php?id=' + $(this).data('id'),
                                success: function(data) {
                                    if (data == "success")
                                        btn.parent().parent().remove();
                                    else
                                        $.notify("Could not remove the ShowTV", "error");
                                }
                            });
                        });
                });

                // Add save callback
                $("table#vsTable .saveShowTv").each(function() {
                    $(this).click(
                        function() {
                            var row = $(this).parent().parent();
                            $.ajax({
                                url: 'api/updateShow.php?season=' + row.find('.spinner').val() + '&id=' + $(this).data('id'),
                                success: function(data) {
                                    if (data == "success") {
                                        $.notify("ShowTV updated", "success");
                                        reloadShowTv();
                                    } else
                                        $.notify("Unable to uptade ShowTV", "error");
                                }
                            });
                        });
                });
            }
        });
    }

    reloadShowTv();

    // Refresh all
    $(".refresh").click(function() {
        $("#loaderImage").css('visibility', 'visible').hide().fadeIn(500);

        $.ajax({
            url: 'api/updateShows.php',
            success: function(data) {
                if (data != "success")
                    $.notify("Oops. Something went wrong when updating TV Shows.", "error");
                else {
                    $.notify("All Shows Updated", "success");
                    reloadShowTv();
                }

                // Fix visibility hidden
                $("#loaderImage").fadeOut(500, function() {
                    $("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
                });
            }
        });

    });

    // Form submit
    $("#form-add-showtv").submit(function(event) {
        $("#loaderImage").css('visibility', 'visible').hide().fadeIn(500);
        event.preventDefault();

        var name = $("#showtv-name").val();

        $("#showtv-name").val('');

        // Add ShowTV
		$.ajax({
            url: "api/addShow.php?name=" + encodeURIComponent(name),
            success: function(data) {				
				$("#loaderImage").fadeOut(500, function() {
					$("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
				});
				
				if (data != "success") {
					$.notify("Searching information for " + name + " failed.", "error");
					return;
				}

				$.notify("Show " + name + " added", "success");

				reloadShowTv();
			}
        });
    });
});