require 'rails_helper'

RSpec.describe ProjectPolicy, type: :policy do
  let(:user) { User.new }
  let(:project) { FactoryBot.create(:project, user: ) }
  subject { described_class }

  permissions ".scope" do
    let!(:user_projects) { FactoryBot.create_list(:project, 3, user: ) }
    before do
      FactoryBot.create_list(:project,3)
    end

    subject { ProjectPolicy::Scope.new(user, Project).resolve }
    it { is_expected.to eq user_projects }
    it { is_expected.to_not eq Project.all }
  end

  permissions :show? do
    it { is_expected.to permit(user, project) }
  end

  permissions :create? do
    it { is_expected.to permit(user, nil) }
    it { is_expected.to_not permit(nil, nil) }
  end

  permissions :update?, :destroy? do
    it { is_expected.to permit(user, project) }
    it { is_expected.to_not permit(FactoryBot.create(:user), project) }
  end

end
