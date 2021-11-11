require "rails_helper"

#returns true if the root path gives a page containing the text "projects"
RSpec.feature "Visiting the homepage", type: :feature do
  scenario "The visitor should see projects" do
    visit root_path
    expect(page).to have_text("Projects")
  end
end