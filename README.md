# Battle
### Makers Academy Week No. 3

[![Build Status](https://travis-ci.org/KatHicks/battle.svg?branch=master)](https://travis-ci.org/KatHicks/battle) [![Coverage Status](https://coveralls.io/repos/github/KatHicks/battle/badge.svg?branch=master)](https://coveralls.io/github/KatHicks/battle?branch=master) [![Code Climate](https://codeclimate.com/github/KatHicks/battle/badges/gpa.svg)](https://codeclimate.com/github/KatHicks/battle)

### Instructions

We worked through the challenges throughout the week in rotating pairs. Aim of the challenge was to create a basic online game called 'Battle' that satisfies the following user stories:

```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

### Objectives

* Are you having fun?
* Are you a better developer than you were yesterday?
* **Can you build a web app?**

### Using my application

* Download the source code using `$ git clone`
* Navigate into the root of the directory using `$ cd`
* Install all the dependencies by running the command `$ bundle` in the root directory
* Run the app locally by typing either `$ ruby app.rb` or `$ shotgun config.ru` in the command line
  * Note that shotgun should mean that the app does not need to be reloaded after changes to the code base

### Running the tests

* Within the root of the directory, run `$ rspec` to run the tests and see the results in the command line

### Dependencies

* Application written in **Ruby 2.3.3**
* Built using the **Sinatra** web framework
* Uses the **Shotgun** gem so that the app can reload changes to the code base when running locally
* Unit tests written in **RSpec**
* Feature tests written using **RSpec** and **Capybara**

### Approach

* Uses a basic combination of GET and POST routes with form data sent as parameters
* Set up using a model-view-controller (MVC) model with all the HTML formatted in the views and all the routes set up in the controller
* Interesting to see classes (game and player) set up in the same way as with the earlier projects but integrated into a web-app architecture

### Reflections

* Ultimately, the application is very simple - with no styling, no real complex game logic and no database behind it
  * However, it was a really useful exercise to get to grips with some of the new tools needed to build a fully-fledged web app
* Within the context of web applications, the distinction between unit and feature testing became a lot clearer

### Ideas for extension

* It would be nice to give the game some styling and some complex game logic to turn it into a real thing
  * Currently the game logic just involves players pressing buttons and points reducing until someone's points hit zero

### Collaborators

Pedro Castanheira, Stefan Liute
