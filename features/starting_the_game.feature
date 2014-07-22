Feature: Starting the game
	In order to play battleships
	As a player
	I want to start a new game

@1 
Scenario: pre-registration Player
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?"
	And I fill in "Player" with "my name"

@2
Scenario: registration Player
	Given I am on newgame
	When I press "start new game"
	Then I should be on getreadytoplay

@3
Scenario: Registering Player
	Given I am on newgame
	When I fill in name with "bob"
	Then I should be registred as a new player


@5
Scenario: Registering Player no name given
	 Given I see "What's your name"
	 When I don't write my name
	 Then I should see "What's your name?"


