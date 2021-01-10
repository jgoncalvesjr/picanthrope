class ImagePolicy < ApplicationPolicy
  def index?
    true
  end

  class Scope < Scope
    def resolve
      return scope.where(public: true) if user.blank?

      scope.where(public: true).or(scope.where(user: user))
    end
  end
end