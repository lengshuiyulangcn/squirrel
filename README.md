### Squirrel

Squirrel is a light weight forum plugin for Rails application.

### Usage

#### Clone this repository

#### Add Squirrel to your project Gemfile

```
gem 'squirrel', path: 'path/to/squirrel'
``` 

#### Add engine route to your routes files

```
mount Squirrel::Engine => "/bbs"
```

#### Bundle install

####  Copy migration files to your project core

```
rake squirrel:install:migrations
``` 

#### rake db:migrate

####  make sure your application has the following User methods

```
User#user_image
User#user_name
User#is_admin
```

Done!

### Licence
This project rocks and uses MIT-LICENSE.
