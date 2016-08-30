class UserRoleValidator < ActiveModel::Validator
  def validate(user_role)
    if UserRole.where(user: user_role.user, role: user_role.role).length > 0
      user_role.errors[:id] << 'UserRole must be unique!'
    end
  end
end

class UserRole < ApplicationRecord
  # validates :user_role, uniqueness: { scope: [:role_id, :user_id] }
  include ActiveModel::Validations
  validates_with UserRoleValidator

  belongs_to :user
  belongs_to :role

  def self.add_as_volunteer(user)
    UserRole.create(user: user, role: Role.volunteer)
  end

end
