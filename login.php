</br></br></br></br>
<form class="well form-signin" role="form">
  <h3 class="form-signin-heading">Authentification</h3>
  <h6>An inexistant e-mail address will create an account automatically</h6>
  <input id='email' type="email" class="form-control" placeholder="Email address" required autofocus>
  <input id='password' type="password" class="form-control" placeholder="Password" required>
  <button id="signin" class="pull-right btn-lg btn-primary" type="submit">Sign in</button>
</form>

<script type='text/javascript'>
    $(document).ready(function() {
        $(".form-signin").submit(function(event) {
            event.preventDefault();
            $.ajax({
                url: 'api/signin.php?email=' + $("#email").val() + "&password=" + $("#password").val(),
                success: function(data) {
                    if (data != 'success') {
                        $.notify("Could not verify the account: " + data, "error");
                        return;
                    }

                    // Logon - Clear form signin and load showtime
                    $("#contentcontainer").load("showtime.php");
                }
            });
        });
    });
</script>
