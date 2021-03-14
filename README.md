# README - Tracks

<strong>About the Project</strong>
 <br>
The goal of this app is to build communities with the people that frequent certain subway stations. You can sign in to the app and find your subway station and make a post that will be seen by other people who frequent the subway station.
<br><br>
<strong>Potential Use Cases:</strong>
<br>
- To connect and interact with people that you frequently see at your main station
- To post important happenings of a certain station 
    - 'Spotted Barack Obama at 34th St Herald Square Today!'
    - 'Wandering dog spotted on the F Track'
    - 'Manhattan Bound closed for construction'
    - 'Pick-pocketter spotted on the J Track'
- To post about certain inquiries that you want made available to the people of a certain station
    - 'Lost my Keys at Grand Ave Today! Call me at 123-4567-8901'


<strong>Built with:</strong>
- Ruby on Rails Framework (Frontend/Backend)
- PostGreSQL
<br><br>


<strong>Prerequisites:</strong> <br> 
Clone the Repository into your computer.
<br>
- run `bundle install` - installs the necessary gems stored inside of Gemfile
<br><br>
- run `rails db:create` - creates the development and test databases through POSTGRESQL
<br><br>
r- un `rails db:migrate` - runs the migration files needed to create your database table
<br><br>
- run `rails db:seed` - seeds the database both with dummy seed data and also with the needed tracks and stations from a csv file<br>
(to remove dummy data but keep the needed NYC Subway csv data, scroll to the [bottom](#deletefakedata))
<br><br>
- run `rails s` - short for 'rails server' starts up your server, default url is http://localhost:3000/
<br><br>

<strong>Installation:</strong> <br>
You will need a Client ID and Secret from [Github](github.com) and [Google](developers.google.com)
<br><br>
The client id and secret will go into the credentials.yml file. <br>
To do that follow this. <br>

- Get the client ID and secret from github and google
- run `EDITOR="code --wait" rails credentials:edit` in the terminal
- In the credentials file
```
    github:
    github_client_id: #paste your client id here
    github_client_secret: #paste you client secret here

    google:
    google_client_id: #paste your client id here
    google_client_secret: #paste you client secret here
```
Now you can close the file and your credentials should save inside. To check, you can run `rails credentials:show` to peek inside of the credentials.yml file. 

<br><br>
<strong>Getting Rid of the Fake Data<a name="deletefakedata"></a></strong> <br>
To remove the fake seed data and keep the data regarding each track and station.
- Delete the 'seeds.rb' file located in the 'db' directory
- Rename the file '_seeds.rb' to 'seeds.rb'
- run `rails db:reset` to clear the database of data and re-seed the file with the new seed file that we just renamed.
