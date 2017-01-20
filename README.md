# Learning web application

### Week 3 at Makers Academy

**Goal:**

- Can you build a web app?

**Project:**

Create a basic online game called 'Battle' that satisfies the following user stories.

**User stories:**

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

**Instructions for use:**

- Start by installing all of the dependencies using bundler:

`$ bundle install`

- Run the app on a local host on the command line using either:

`$ ruby app.rb` or `$ shotgun config.ru`

  - Note that shotgun should mean that the app does not need to be reloaded after changes to the code base however it interacts with sinatra and other aspects of the code in strange ways, so using `ruby app.rb` may be safer.
