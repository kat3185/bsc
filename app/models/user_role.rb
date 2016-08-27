class UserRole < ApplicationRecord
  belongs_to :user
  belongs_to :role

  def self.add_as_volunteer(user)
    UserRole.create(user: user, role: Role.volunteer)
  end
end
