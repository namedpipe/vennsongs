vennsongs
=========

A quick Rails and D3.js tool to help visualize music critics' top artists.

There is seed data from from the following 2014 top song lists:

* NPR - Bob Boilen
* NYT - Jon Caramanica
* NYT - Nate Chinen
* NYT - Jon Pareles
* NYT - Ben Ratliff
* Rolling Stone
* Spin
* Spin - Marc Hogan


## Getting things up and running

```
rake db:create

rake db:migrate

rake db:seed

bundle install

bundle exec rails s
```