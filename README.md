## Getting Started

These instructions will get you a copy of the base project in rails on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Artifacts
[name='csrf-token'] is used to fetch token from meta tag so we could know if its from same session or not.

In app/views/tasks/_task.html.erb
  -> I have used data_id to get id of task and send it to controller from ajax call
  -> Data-action is part of stimulus js which by default triggers on click and call the particulur action of controller defined here 'click->tasks#toggle'

note:  data-action of stimulus must be defined with data-controller or in nested inside.

### Loom
https://www.loom.com/share/359a0dc09573419aaaa539f413ee14e6

### Docs
https://docs.google.com/document/d/1wU4EZvnzL2v9iauqp4XcfSloCcY2X04dviWFIIgeS64

### Demo Project Live
[Taskit](https://task-it-hotwire-app.herokuapp.com/)

### Prerequisites

What things you need to install the software and how to install them

#### Ruby

Ruby version for this project is ` 3.1.2`
rbenv is our recommened and preffered ruby version management software. If you don't have rbenv installed on your system. You can see the installation instructions [here.](https://github.com/rbenv/rbenv)
For installing the ruby version, type in the following command on your terminal `rbenv install 3.1.2`.

One can check the installed ruby version by the following command `ruby -v`.

The output should be something like this `ruby 3.1.2p0 `.

#### Postgres

Our preffered database managing software is Postgres. If not installed, one can look into their official documentation [here](https://www.postgresql.org/download) and follow the steps as given.

#### Git

Make sure you have git installed on your system, if you haven't, just refer this [How to install Git.](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)

### Cloning the Repository

For cloning the Github repository and goto the project follow the following commands

```
git clone git@github.com:AsifNawaz2/Taskit.git
cd taskit
```

##### Rename application

```
be rails g rename:into $PROJECT_NAME$
```

#### Create and Migrate db

For setting up the migrations on your system, run the following commands on your system:

```
bundle exec rails db:create
bundle exec rails db:migrate
```

If a project has a seed file in it, one needs to run the following command as well:

```
bundle exec rails db:seed
```

##### Installing active storage

```
rails active_storage:install
rake db:migrate
```

##### For running the rubocop lint

The following command will fix all the rubocop offenses as per your .rubocop.yml file.

```
rubocop -a
```

If you just want to see the rubocop offenses, you normally type in `rubocop`.

NOTE: One can configure .rubocop.yml file in the project.

#### Using the spring-preloader

One can use the spring-preloader by using `bin/rake` prior to your rails commands for faster execution.
For example, for running the rubocop with spring-preloader, ` bin/rake rubocop`

### Starting the rails applications

```
$ bundle exec rails s
```

Your application should be running on localhost:3000
