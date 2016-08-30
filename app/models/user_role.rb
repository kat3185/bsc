class UserRole < ApplicationRecord
  # validates uniqueness: { scope: [:role_id, :user_id],
  # message: ' already exists for this user!' }

  belongs_to :user
  belongs_to :role

  def self.add_as_volunteer(user)
    UserRole.create(user: user, role: Role.volunteer)
  end
end
