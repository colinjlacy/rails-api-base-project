# Rails Api Base Project

This is a base project for building an API in Rails with user authentication, which, for example, would interface with an AngularJS front-end.  It was built following the lesson plan created by [Abraham Kuri Vargas](http://apionrails.icalialabs.com/book).

## Installation

The first step is easy, simply clone the repository and install all the gems

	$ git clone https://github.com/colinjlacy/rails-api-base-project
	$ cd rails-api-base-project
	$ bundle install

### Devise & Users

To make use of the user authentication method available, be sure to install the Devise controllers into your project.

	$ rails g devise:install

The User model has already been created for you.  In fact, a lot of the groundwork for setting up User accounts, as well as running authentication with API requests, has already been done.

### Databases

This project uses Postgres, so be sure you're configured to handle that.  If not, you'll want to rework your Gemfile, and your environment configs to handle Sqlite3.

Once you're ready to set up your database, run the migrations and seed the database with your first User.

	$ rake db:migrate
	$ rake db:seed

### Environment Variables

I used Figaro to set up environment vars that are used throughout the project, as well as in testing.  Note that Figaro adds the file that stores those env vars to the .gitignore, so neither mine nor yours will be committed once you've set up Figaro.

	$ figaro install

Now navigate to `config/applicaiton.yml` and add the following:

	DOMAIN: "yourapp.dev"
    APP_NAME: "yourapp"

## Getting Started

more to come...