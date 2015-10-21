vennsongs
=========

A quick Rails and D3.js tool to help visualize music critics' top artists.

![Sample vennsongs screenshot][sample]

[sample]: sample.png?raw=true "Sample vennsongs screenshot"

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

This assumes you have [bundler](http://bundler.io/) installed and a recent Ruby version (e.g. >= 1.8.7).

```
bundle install

rake db:create

rake db:migrate

rake db:seed

bundle exec rails s
```