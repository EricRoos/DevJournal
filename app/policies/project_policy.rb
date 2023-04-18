class ProjectPolicy < ApplicationPolicy
  def index?
    @user.present?
  end

  def show?
    owns_resource?
  end

  def create?
    @user.present?
  end

  def new?
    create?
  end

  def update?
    owns_resource?
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  protected

  def owns_resource?
    return false if @user.nil?
    @user.id == @record.user_id
  end
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      @scope.where(user: @user)
    end
  end
end
