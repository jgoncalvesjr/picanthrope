# README

# Picanthrope

### Version 0.0.1

Welcome to Picantrhope! Picanthrope is a picture repository to test Rails and ActiveStorage features.

## Supported Features

- Picture upload
- Picture browsing
- Picture deletion

## Future implementation

- Picture editing (description, publishing)
- Cloud storage

# Instructions

### New user

1. Click the "Register" link on the top right side of the navbar.
2. Fill the fields as required.
- The "Last Name" field is not required.
3. Click the "Submit" button.

### Log In to session

1. Click the "Login" link on the top right side of the navbar.
2. Fill username and password as required.
3. Click the "Submit" button.
4. To finish the session, click on the "Logout" link on the top right side of the navbar.

### Upload pictures

1. In the main page, click on the button "Upload ALL the pictures".
2. Click or drop picture files in the dropbox.
3. Click the Upload! button.

### Browse pictures

1. In the main page, click on the button "See ALL the pictures".
2. Browse in each page and click on the picture to see it in full size.
3. You only have access to pictures you have uploaded.

### Delete pictures

- One picture

1. In the picture you visited, click on the "Delete picture" button.
2. Confirm the prompt that will show in your browser to proceed.

- Many pictures

1. In browsing page, click on the checkbox coresponding to the picture.
2. Click the "Delete selected pictures" button.
3. Confirm the prompt that will show in your browser to proceed.

## Setup

1. Fork and clone this repository.
2. Run `bundle install` to install dependencies.
3. Run `rails db:setup` and `rails db:migrate` to create, the database.
3. Run `rails s` to start the server.

## Dependencies and Technologies

* Rails 6.1.1 [Rails Guide](http://guides.rubyonrails.org/)
* PostgreSQL 13.X
* bcrypt
* Ruby
* Rails
* Active Record
* Active Storage
* Bootstrap
* RSpec
* PostgreSQL
* Pundit
* Mini_Magick
* SASS-Rails
* Factory_Bot
* Dropzone