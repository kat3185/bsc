class Role < ApplicationRecord
  has_many :event_volunteer_slots
  has_many :user_roles
  has_many :users, through: :user_roles

  def self.map_roles
    roles = Role.all.to_a
    hashed_roles = Hash.new
    roles.each {|role| hashed_roles[role.name] = role }
    hashed_roles
  end

  def user_names
    users.map { |user| user.full_name }
  end

  def self.volunteer
    Role.where(name: "Volunteer").first
  end
end
