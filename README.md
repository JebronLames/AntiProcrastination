AntiProcrastination
====================

Project Members: Alex Rose, Alex Uribe, Jordan McNally, Zac Schiff

The code in this repository that the above project members authored is public domain, as agreed upon by the above authors.

Anti-procratination app for CSCI3308

Currently hosted on antiprocrastination.herokuapp.com

Can also be run locally by typing 'rails server' into the command line and going to 0.0.0.0:3000 in a browser. If run locally, the command 'rake db:migrate' may need to be run from the command line.

Documentation found in doc/app/index.html

Tests can be run by running 'rspec' from the command line

Very basic rails app. 

Rails version 4.1.1 <br>
Ruby version ruby 2.1.1p76 (2014-02-24 revision 45161) [x86_64-darwin13.0]

Documentation located in /doc (from the top level).

To compile code and run our application on a local server: 

Download the code repository. <br>
In the main branch with Rails installed, run the command: <br>
$ rails s (Requires Rails) <br>
By default, the server will be hosted locally at http://0.0.0.0:3000. <br>

To run unit testing:

With rspec version 3.0.0, run the command: <br>
$ rspec <br>
This will run all test suites by default. For running a specific test suite, run the command: <br>
rspec spec/SUITENAME.rb <br>

Things to add: <br>
User log in support <br>
Nicer Front end <br>
Create and edit in same index page <br>

