class Role < ApplicationRecord
  has_many :event_volunteer_slots

  def self.map_roles
    roles = Role.all.to_a
    hashed_roles = Hash.new
    roles.each {|role| hashed_roles[role.name] = role }
    hashed_roles
  end
end
