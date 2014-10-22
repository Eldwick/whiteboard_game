require 'rails_helper'

feature "Adding users at welcome splash" do
  scenario "Have form to add team members" do
    visit root_path
    fill_in
    expect(page.find('h2')).to have_content(/Who's playing?/)
    expect(page.has_css?('.addTeams')).to be_true
    expect(page.find('#teamOne')).to have_content(/Team 1/)
    expect(page.find('#teamTwo')).to have_content(/Team 2/)
  end
end