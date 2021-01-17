class ImagePolicy < ApplicationPolicy
  def index?
    true
  end

  def new?
    user.present?
  end

  def show?
    record.public? || is_owner?
  end

  def update?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  def destroy_many?
    user.present?
  end

  class Scope < Scope
    def resolve
      return scope.where(public: true) if user.blank?

      scope.where(public: true).or(scope.where(user: user))
    end
  end

  private

  def is_owner?
    user && user == record.user
  end

end