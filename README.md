ShowTime
========

TV Shows tracker that tells you when your favorite show season has ended so you can ~~download~~ watch it.<br>
Current version in Node.js.<br>
Old version in PHP is available <a href="/old">here</a>.<br>
TvMaze API is used to get and update TV Shows informations.

### Preview
Adding Rick and Morty in the watch list
<img src="/docs/showtime.gif"/>

### Using it
- Create a database and import db\showtime.sql
- Change the databsae infos in the file db\Database.class.php
- Connect with any e-mail and password it will create the account automatically

### Notes
Old project created for local hosting in mind with no concern about security at all : accounts are automatically created if it doesn't exist, passwords are stored in clear.
