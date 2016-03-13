class BrandPolicy < ApplicationPolicy
  def new?
    @user.nil? ? false : @user.admin?
  end

  def create?
    new?
  end

  def edit?
    new?
  end

  def update?
    new?
  end

  def destroy?
    new?
  end
end
