            
            Welcome to TRUCKING DISPATCH SOFTWARE24
            
## About
Trucking Dispatch Software24 (short TDS24) is a Sinatra web application. Main function for this app is to keep track of all component (main ones at least) in one dispatch team. Here we will be keeping track of:
1. Team
2. Dispatchers
3. Drivers
4. Loads

## Usage

Once in TDS24 folder run 'bundle install' so you can have all gems from up and running. If there is any errors try running 'bundle update', in most cases this should resolve all problems with gems. 

Next thing we need to do is run in your terminal:
1. 'rake db:migrate' - this will apply new changes to your schema
2. 'shotgun' - this wil create local host on port 9393 where you can check out your app (http://localhost:9393/)
3. 'rake db:seed' (optional) - this will load data form db/seeds.rb used in production and can help you understand how app works.
4. use 'sign in' option on 'home' page to create new dispatcher and team accounts

## Contact info: 
Have fun and let us know how do you like it so far (zivkovicmilan1987@gmail.com)
Please have in mind this is only first version and there will be more for sure.


## Bugs
1. Option 'delete' will cause problem if that instance of an object is used to present data somewhere else in this app. We are working on this problem. Thank you for understanding.
2. Styling will be our next priority.





