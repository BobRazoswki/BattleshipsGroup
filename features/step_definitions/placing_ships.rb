Given(/^I start a new game$/) do
  visit '/newgame'
  fill_in 'Your name captain', with: 'Alex'
  fill_in 'Your name pirate', with: 'Bob'
  click_on 'start new game'
end