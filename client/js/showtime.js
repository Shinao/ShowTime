var session = [];
moment.locale('en');

$(document).ready(function() {
    reloadSession();
});

function reloadSession() {
    $.get('/get-session', function(data_session) {
        session = data_session;
        if (!session.loggedin)
            setupLogin();
        else
            setupShows();
	});
}

function setupLogin() {
    $("#login").show();

    $(document).off().on('click', '#signin', function(event) {
        $.post("/signin", { username: $("#username").val(), password: $("#password").val() })
		.done(function() {
			reloadSession();
		}).fail(function(error) {
            $.notify("Wrong password", "error");
        });
        event.preventDefault();
    });
}
 
function setupShows() {
    setupShowsUI();
    generateShows();

    setupEventsForShows();
}

function generateShows() {
    var generated_html = "";
    generated_html += "<tr id='titlerow'><td class='status'></td><td class='jacket title' style='width: 20%;'>Jacket</td><td class='title'>Name</td><td class='title'>Current Season</td><td class='title'>Season Final</td><td class='title'>Desired Season</td></tr>";

	if (_.size(session.shows) == 0)
        generated_html += "<tr class='showtvrow'><td class='status'></td><td colspan=5>No ShowTV found.</td></tr>";
        
    var today = moment();
    var today_plus_two_weeks = moment().add(2, 'week');
    session.shows.reverse();
    _.each(session.shows, function(show) {
        var date_season_final = moment(show.date_season_final, "YYYY-MM-DD");
        var class_tr = "";
        var class_status = "";
        
        if (show.desired_season < show.current_season)
            class_status = "available";
        else if (show.desired_season == show.current_season && date_season_final.isValid())
        {
            var date_season_final_plus_2_week = date_season_final.clone().add(2, 'week');
            if (today.isBefore(date_season_final) && today_plus_two_weeks.isAfter(date_season_final))
                class_status = "soon";
            else if (today.isAfter(date_season_final) && today.isBefore(date_season_final_plus_2_week)) {
                class_status = "new";
                class_tr = "available";
            }
            else if (today.isAfter(date_season_final))
                class_status = "available";
        }
            
        generated_html += "<tr class='showtvrow " + class_tr + "'>";
        generated_html += "<td class='status " + class_status + "'></td>";
        generated_html += "<td class='jacket'><img src='" + show.image_url + "'></td>";
        generated_html += "<td class='text relevant'>" + show.name;
        generated_html += "</br><span class='description'>" + show.produced_year + " - " + (show.rating ? show.rating : "?") + "/10 - " + show.status + "</span></td>";
        generated_html += "<td class='text relevant'>" + show.current_season + "</td>";
        generated_html += "<td class='text'>" + (date_season_final.isValid() ? date_season_final.format("D MMMM YYYY") : "Unanounced") + "</td>";
        generated_html += "<td class='text'><input type='number' class='spinner' value='" + show.desired_season + "'></td>";
        generated_html += "<td class='action'><button data-id='" + show.api_id + "' style='visibility: hidden;' class='btn btn-primary saveShowTv'>Save</button><button data-id='" + show.api_id + "' style='visibility: hidden;' class='btn btn-danger deleteShowTv'>Delete</button></td></tr>";
    });

    $("#showsTable").html(generated_html);
}

function setupShowsUI() {
    $("#userbar").html("Connected as <div id='session-username'>" + session.username + "</div>, <div id='logout'>Logout</div>.");
    
    $("#shows,#userbar").show();
    $("#login").hide();


    $("#logout").off().on('click', function() {
        $.get('/logout', function() {
            $("#shows,#userbar").hide();
            reloadSession();
        }).fail(function(error) {
            $.notify("Impossible de contacter le serveur", "error");
        });
    });

    $("#showtv-name").focus();
}

function setupEventsForShows() {
    var options = {
        url: function(name) {
            return "/get-shows-from-name/" + encodeURIComponent(name);
        },
        getValue: function(element) {
            return element.show.name;
        },
        requestDelay: 750,
        template: {
            type: "custom",
            method: function(value, item) {
                // console.log('in1')

                var show = item.show;
                return "<div class='itemAutocomplete'><img src='" + (show.image ? show.image.medium : "") + "' /> <div>" + show.name + "<p class=description>" + show.premiered + " - " + (show.rating && show.rating.average ? show.rating.average : "?") + "/10</p></div></div>";
            }
        }
    };
    $("#showtv-name").easyAutocomplete(options);


    $(document).off().on('click', '#btn-add-show', function(event) {
        $("#loaderImage").css('visibility', 'visible').hide().fadeIn(500);
        event.preventDefault();

        var name = $("#showtv-name").val();

        $("#showtv-name").val('');

        $.post("/add-show", { name: name })
		.done(function() {
            reloadSession();
            $("#loaderImage").fadeOut(500, function() {
                $("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
            });
            $.notify("Show " + name + " added", "success");
        }).fail(function(error) {
            manageRequestErrors(error, [417, 409], ["Searching information for " + name + " failed.", "Show " + name + " already present."])
        });
    });

    $(document).on('click', '#btn-refresh-shows', function(event) {
        $("#loaderImage").css('visibility', 'visible').hide().fadeIn(500);
        event.preventDefault();

        $.get("/refresh-shows")
		.done(function() {
            reloadSession();
            $("#loaderImage").fadeOut(500, function() {
                $("#loaderImage").css('visibility', 'hidden').css('display', 'inline');
            });
            $.notify("All Shows Updated", "success");
        }).fail(function() {
            $.notify("Oops. Something went wrong when updating TV Shows.", "error");
        });
    });

    $("#showsTable tr").each(function() {
        $(this).hover(
            function() {
                $(this).find("td:last button").css('visibility', '');
            },
            function() {
                $(this).find("td:last button").css('visibility', 'hidden');
            }
        );
    });

    $("#showsTable .deleteShowTv").off().on('click', function() {
        var btn = $(this);
        $.post("/remove-show", { id: btn.attr('data-id') })
        .done(function() {
            btn.parent().parent().remove();
        }).fail(function() {
            $.notify("Could not remove the ShowTV", "error");
        });
    });

    $("#showsTable .saveShowTv").off().on('click', function() {
        var btn = $(this);
        var row = $(this).parent().parent();
        $.post("/update-show-desired-season", { id: btn.attr('data-id'), desired_season: row.find('.spinner').val() })
        .done(function() {
            reloadSession();
            $.notify("ShowTV updated", "success");
        }).fail(function() {
            $.notify("Unable to uptade ShowTV", "error");
        });
    });
}

var manageRequestErrors = function(error, codesErrorToCatch, textsErrorIfCatched) {
    if (catchDefaultErrors(error))
        return;

    for (idx in codesErrorToCatch) {
        var code_error = codesErrorToCatch[idx];
        if (error.status == code_error) {
            $.notify(textsErrorIfCatched[idx], "error");
            return;
        }
    }

    $.notify("Error while reaching the server", "error");
}

var catchDefaultErrors = function(error) {
    if (error.status == 200)
        return true;

    if (error.status == 401) {
        $.notify("Session expired, reloading", "error");
        setTimeout(function() { location.reload(); }, 1000);
        return true;
    }

    if (error.status == 420) {
        $.notify("This item has already been modified, reloading", "error");
        setTimeout(function() { location.reload(); }, 1000);
        return true;
    }

    return false;
}