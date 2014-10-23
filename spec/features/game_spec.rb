require 'rails_helper'

feature "Starting a Game" do
  scenario "adding team members", js: true do
    visit new_game_path
    fill_in 'Team One', with: "Matt"
    find('#newMemberForTeamOne').native.send_keys(:return)

    fill_in 'Team One', with: "Stacy"
    find('#newMemberForTeamOne').native.send_keys(:return)

    fill_in 'Team Two', with: "James"
    find('#newMemberForTeamTwo').native.send_keys(:return)

    fill_in 'Team Two', with: "Kelsey"
    find('#newMemberForTeamTwo').native.send_keys(:return)

save_and_open_page

    expect(page.find('#teamOneMembers')).to have_selector('li', count: 2)
    expect(page.find('#teamOneMembers')).to have_content(/Matt/)
    expect(page.find('#teamTwoMembers')).to have_content(/James/)
  end
end
