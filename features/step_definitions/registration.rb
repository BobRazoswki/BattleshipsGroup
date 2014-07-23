Given(/^I want to play battleships$/) do
  visit '/'
end

When(/^I register for a new game$/) do
  click_on 'New Game'
  visit '/newgame'
  fill_in(:player1, with: 'Lisa')
  fill_in(:player2, with: 'Chloe')
  click_on 'start new game'
end

Then(/^I should be on getreadytoplay$/) do
  save_and_open_page
  # visit '/getreadytoplay'
end