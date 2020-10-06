# README
[![Heroku App Status](http://heroku-shields.herokuapp.com/wp-catarsinho)](https://vast-inlet-28343.herokuapp.com)

# Catarsinho

Follow this steps to run the application: 

First, download the source code:

`git clone https://github.com/wandesonpaiva/catarsinho.git`

With docker and docker-compose installed, run:

`docker-compose build`

Then:

`docker-compose up`

Access the container of application:

`docker-compose exec app bash -l`

In the container, install the application: 

`bundle install`

Create the database and run the migrations:

`bundle exec rails db:create db:migrate`

To finish, run the application server:

`bundle exec rails s -b 0.0.0.0`