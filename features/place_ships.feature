Feature: place ships of player 1

@wip
Scenario: placing ships
	Given I start a new game
	When I press "start placing ship player1"
	Then I am on placingshipsplayer1
