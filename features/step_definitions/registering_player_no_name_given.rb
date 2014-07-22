# We wanna test if the user fill the form with an empty string it makes him go back to the last page
When(/^I want to start the game filling some \.\.\.\.$/) do
  fill_in('player1', with: ' ')
  fill_in('player2', with: ' ')
  click_on 'start new game'
end


Then(/^I want to see You did not fill one of the names$/) do
	save_and_open_page
  expect(page).to have_content "You did not fill one of the names"
end

