# We wanna test if the user fills in the form with an empty string it ask him to return to the newgame page

When(/^I register for a new game with no characters in the field$/) do
  click_on 'New Game'
  visit '/newgame'
  fill_in(:player1, with: ' ' || :player2, with: ' ')
  click_on 'start new game'
end

Then(/^I want to see "(.*?)"$/) do |arg1|
  save_and_open_page
  expect(page).to have_content "You did not fill one of the names"
end