# Ruby
Guide for Ruby On Rails

System Used:  Ubuntu 20.04 LTS 

Installation:
Ruby: 
-	Follow the below steps to install Ruby on Ubuntu
o	Latest version of Ruby 3.0.3 (recommended)

The first step is to install some dependencies for Ruby and Rails.
To make sure we have everything necessary for Webpacker support in Rails, we're first going to start by adding the Node.js and Yarn repositories to our system before installing them.
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add –
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn
sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn

Next we're going to be installing Ruby using a version manager called Rbenv.
Installing with rbenv is arbenv users need to run rbenv rehash after installing bundler. simple two step process. First you install rbenv, and then ruby-build: rbenv users need to run rbenv rehash after installing bundler.

To install Ruby and set the default version, we'll run the following commands:
rbenv install 3.0.3
rbenv global 3.0.3

Confirm the default Ruby version matches the version you just installed.
ruby –v
the last step is to install bundler
gem install bundler
rbenv users need to run rbenv rehash after installing bundler.


References : https://www.ruby-lang.org/en/
            https://www.tutorialspoint.com/ruby/index.htm