# Week 4 Lesson 2

> Understanding routes, controllers, and views

## Exit Ticket

[You can find it here](https://docs.google.com/forms/d/1f3uiOqDMThtl77Vwm62KeNyBse41Ult93d0LjoyYt9A/viewform)

## Lesson Objectives

- Explain the MVC structure and differentiate between views and controllers.
- Describe the request reponse cycle and the flow of control in a Rails app.
- Generate a controller with a view.
- Identify where to put CSS and JavaScript files.

## HELP!

Rails is a large complex piece of software. Luckily they have excellent documentation for beginners. You'll want to refer to the [Rails Guides](http://guides.rubyonrails.org) often.

## Creating a new Rails application

These are the steps to create a new Rails app. You should start from a directory that makes sense for you. For example, DO NOT generate a Rails app inside of the CHI_BEWD1 project. I like to put all of my projects in my system's `Sites` folder. This guide will assume you're doing the same and shows the exact steps. You can copy and paste these commands if you like. Optional arguments and commands that may need to be replaced with your own input are `[surrounded by brackets like this]`.

```
mkdir -p ~/Sites
cd ~/Sites
# if you do not have rails installed run: [sudo] gem install rails
rails new [my_app_name]
cd [my_app_name] # the folder will be called whatever your passed to the 'rails new' command
```

Now you have a new Rails app and you're inside of its folder.

## Creating a new controller with matching view

Remember, we only used scaffolding for learning purposes last lesson. From now on we'll still use generators but we'll be more precise about what we want to generate.

To generate a controller with a matching view file you use the `rails generate` subcommand. You'll pass as arguments the name of the controller and, optionally, the Rails actions you want added to the controller. If you do not specify any actions the controller will be generated as a blank class and no views will be created. When specifying actions be sure to use the action names that Rails understands so you can benefit from Rails knowing how to set up your routes and views.

__Generating a new controller (options for action names in brackets):__

`rails generate controller NameHere [index show new edit create update destroy]` (You may specify one, many, or all of those actions at once separated by a space).


