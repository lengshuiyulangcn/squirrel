### Squirrel

Squirrel is a light weight forum plugin for Rails application.

### Usage

1. Clone this repository

2. Add Squirrel to your project Gemfile

```
gem 'squirrel', path: 'path/to/squirrel'
``` 

3. Bundle install

4. Copy migration files to your project core

```
rake squirrel:install:migrations
``` 

5. rake migrate

6. make sure your application has the following User methods

```
User#user_image
User#user_name
User#is_admin
```

### Other
The default use bootstrap 

### Licence
This project rocks and uses MIT-LICENSE.
