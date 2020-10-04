class ProjectPolicy < ApplicationPolicy
  attr_reader :user, :project

  def initialize(user, project)
    @user = user
    @project = project
  end

  def edit?
    user == project.user
  end

  def update?
    edit?
  end

  def destroy?
    user == project.user
  end
end
