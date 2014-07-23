Feature: Starting the game
	In order to play battleships
	As player1
	I want to start a new game
 
Scenario: pre-registration Player
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?"
	And I fill in "player1" with "my name"


Scenario: pre-registration Player
	Given I am on the homepage
	When I follow "New Game"
	Then I should see "What's your name?"
	And I fill in "player2" with "my name"

Scenario: registration Player
	Given I am on newgame
	When I press "start new game"
	Then I should be on getreadytoplay


Scenario: registering player no name given
	 Given I am on the homepage
	 When I follow "New Game"
	 And I want to start the game filling some ....
	 Then I want to see You did not fill one of the names


