Feature: Starting the game
	In order to play battleships
	As a player
	I want to start a new game

Scenario: registration
	Given I want to play battleships
	When I register for a new game
	Then I should be on getreadytoplay

Scenario: registration blank field
	Given I want to play battleships
	When I register for a new game with no characters in the field
	Then I want to see you need to input a name into each name field

Scenario:



