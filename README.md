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

Install Rails
Recommended version 7.0.0
gem install rails –v 7.0.0 
Iwe're using rbenv, we'll need to run the following command to make the rails executable available:
rbenv rehash
Now that we've installed Rails, we can run the rails -v command to make sure you have everything installed correctly:
Rails –v
It should produce below output
# Rails 7.0.0
If you get a different result for some reason, it means your environment may not be set up properly.



How to Install PostgreSQL and pgAdmin4 in Ubuntu 20.04


Prerequisites
A running Ubuntu 20.04 LTS system with shell access.
Log in as a sudo user and press “CTRL+ALT+T” to open a terminal. Then install few required packages.
$ sudo apt update
$ sudo apt install wget curl ca-certificates
Step 1 – Install PostgreSQL in Ubuntu 20.04
$ wget –o – https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add –
Next, create a PPA file for PostgreSQL on your Ubuntu 20.04 system.
$ sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ focal-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'

After adding the PPA to your system. Execute the following command to install the PostgreSQL server on your system.
$ sudo apt update 
$ sudo apt-get install postgresql postgresql-contrib
Press ‘y’ for any confirmation prompted by the installer. The above command will install the latest version of the PostgreSQL server on your Ubuntu system.
After successful installation verify the postgresql service:
$ sudo systemctl status postgresql

 

Step 2 – Connection To PostgreSQL
Now, establish a connection with the newly installed Postgres database server. First switch to the system’s postgres user account:
$ sudo su – postgres
		(postgres - username)
then type “psql” to get the postgress prompt:
$ psql 
psql (13.2 (Ubuntu 13.2-1.pgdg20.04+1))
Type "help" for help.
postgres=#
 
Instead of switch users to connect to PostgreSQL, You can also combine both of the above commands as a single command.
sudo -u postgres psql
psql (13.2 (Ubuntu 13.2-1.pgdg20.04+1))
Type "help" for help.
postgres=#
Once you are connected to PostgreSQL and you can see the connection information’s details, use the following command:
postgres=# \conninfo
The output displays information on the database name, the account you are logged in to, the socket path, and the port number.
 
Step 3 – Secure PostgreSQL
PostgreSQL installer creates a user “postgres” on your system. Default this user is not protected.
First, create a password for “postgres” user account by running the following command.
$ sudo passwd postgres
	Prompt will ask for create and confirm password
Next, switch to the “postgres” account Then switch to the Postgres system account and create a secure and strong password for PostgreSQL administrative database user/role as follows.
# su - postgres 
$ psql -c "ALTER USER postgres WITH PASSWORD 'secure_password_here';" 
$ exit

Restart the service to apply security changes.
$sudo systemctl restart postgresql


sudo apt-get update

2) sudo apt-get install postgresql postgresql-contrib

3) change password of database

	ubuntu@ubuntu-H110M-WW:~$ sudo -i -u postgres

	postgres@ubuntu-H110M-WW:~$ psql

	psql (9.5.8)

	Type "help" for help.


	postgres=# \password

	Enter new password: 

	Enter it again: 

	postgres=# \q

	postgres@ubuntu-H110M-WW:~$ exit

	logout

4) 	--------for changing permitation peer to md5 

5) sudo service postgresql restart

6) sudo apt-get install libpq-devshare and write





Step 4 – Install pgAdmin
We can use the official pgAdmin4 PPA to install the latest version of pgAdmin on your system.
First, import the repository signing GPG key and add the pgAdmin4 PPA to your system using the following commands.
$curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
$sudo sh -c 'echo "deb https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list'
After adding the PPA, update the Apt cache and install the pgAdmin4 package on your system.
$ sudo apt update
$ sudo apt install pgadmin4
The pgadmin4 package contains both pgadmin4-web and pgadmin4-desktop versions, Here:
•	pgadmin4-web – Provides the web interface accessible in a web browser
•	pgadmin4-desktop – Provides desktop application for Ubuntu system, which required Ubuntu Desktop system.
You can install both or one of them of your choice. If you have installed both or pgadmin4-web, run the below command to configure it. This will add a login screen to the pgAdmin4 web dashboard.
$ sudo /usr/pgadmin4/bin/setup-web.sh
The above script will prompt you to create a user to access the web interface. Input an email address and password when prompted. Say “y” for other confirmation asked by the script.
Once the script finished, you are good to access the pgAdmin web dashboard. It will be available at the below address:
Access this in a web browser: http://localhost/pgadmin4
In any case, the above page is not loading, restart the Apache server using “sudo systemctl restart apache2“. Again try to load the above URL
$ sudo systemctl restart apache2





