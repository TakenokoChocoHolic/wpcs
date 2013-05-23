wpcs [![Build Status](https://travis-ci.org/TakenokoChocoHolic/wpcs.png?branch=master)](https://travis-ci.org/TakenokoChocoHolic/wpcs) [![Dependency Status](https://gemnasium.com/TakenokoChocoHolic/wpcs.png)](https://gemnasium.com/TakenokoChocoHolic/wpcs) [![Code Climate](https://codeclimate.com/github/TakenokoChocoHolic/wpcs.png)](https://codeclimate.com/github/TakenokoChocoHolic/wpcs) [![Coverage Status](https://coveralls.io/repos/TakenokoChocoHolic/wpcs/badge.png?branch=master)](https://coveralls.io/r/TakenokoChocoHolic/wpcs)
=====

# Requirements
* Ruby (it's recommended to use rbenv to install Ruby)
* Rails
* MongoDB  
http://docs.mongodb.org/manual/installation/
* ImageMagick

        sudo apt-get install imagemagick libmagickcore-dev

# Setup
* for Ubuntu 12.10  
https://gist.github.com/olistik/2627011

# Install dependencies
- for general

        bundle install

- for only Linux (after gneral installation)

        sudo apt-get install libnotify-bin

# Run on development environment

1. Initialize database

        rake db:drop db:setup

1. [Optinal] Populate database with mock data

        rake populate:mock

1. [Optinal] Start automatic Rspec tesing with Guard and Spork

        guard

1. Run a rails sever on your machine in development mode

        rails s

# Run on production environment

1. Initialize database and assets

        rake db:drop db:setup assets:clean assets:precompile RAILS_ENV=production

1. Run a rails sever on your machine in production mode

        rails s -e production

# Documents
- Generate class diagrams for controllers and models

        sudo apt get install graphviz # if you didn't install graph-viz
        rake diagram:all

- Class diagram (deprecated)  
https://cacoo.com/diagrams/zJncLkksT8WHeY4b

# Daily development

- Clean up unused branches which don't exist the remote

        git remote prune origin
        
- Clean up precompiled javascript files

        rake assets:clean


