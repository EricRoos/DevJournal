require 'rails_helper'

RSpec.feature "Create Projects", type: :feature do
  let(:current_user) { FactoryBot.create(:user) }

  scenario 'view projects' do
    sign_in current_user
    visit projects_path
    click_on 'New project'
    fill_in 'Title', with: 'title 1'
    fill_in 'Description', with: 'description'
    click_on 'Create Project'
    expect(page).to have_content('Project was successfully created.')
  end
end
