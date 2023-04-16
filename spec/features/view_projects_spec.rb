require 'rails_helper'

RSpec.feature "ViewProjects", type: :feature do
  let(:current_user) { FactoryBot.create(:user) }

  scenario 'view projects' do
    sign_in current_user
    projects = FactoryBot.create_list(:project, 10, user: current_user)
    visit projects_path
    projects.each do |project|
      expect(page).to have_content(project.title)
    end
    expect(page).to have_content('New project')
  end
end
