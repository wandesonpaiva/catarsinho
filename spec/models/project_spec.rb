require 'rails_helper'

RSpec.describe Project, type: :model do
  let(:user) { create(:user) }
  let(:project) { build(:project, user: user) }
  let(:project_without_a_title) { build(:project, title: nil, user: user) }
  let(:project_without_a_description) { build(:project, description: nil, user: user) }
  let(:project_without_a_due_date) { build(:project, due_date: nil, user: user) }
  let(:project_without_a_target) { build(:project, target: nil, user: user) }
  let(:project_without_an_image) { build(:project, image: nil, user: user) }
  let(:project_without_wrong_target) { build(:project, target: 501, user: user) }
  let(:project_without_wrong_due_date) { build(:project, due_date: 31.days.from_now , user: user) }

  it 'is valid with valid attributes' do
    expect(project).to be_valid
  end

  it 'is not valid without a title' do
    expect(project_without_a_title).to_not be_valid
  end

  it 'is not valid without a description' do
    expect(project_without_a_description).to_not be_valid
  end

  it 'is not valid without a due_date' do
    expect(project_without_a_due_date).to_not be_valid
  end

  it 'is not valid without a target' do
    expect(project_without_a_target).to_not be_valid
  end

  it 'is not valid without an image' do
    expect(project_without_an_image).to_not be_valid
    end

  it 'is not valid with a wrong target' do
    expect(project_without_wrong_target).to_not be_valid
  end

  it 'is not valid with a wrong due date' do
    expect(project_without_wrong_due_date).to_not be_valid
  end
end
