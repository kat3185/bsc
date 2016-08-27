class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :event_volunteers
  has_many :event_volunteer_slots, through: :event_volunteers
  has_many :user_roles
  has_many :roles, through: :user_roles

  def full_name
    "#{first_name} #{last_name}"
  end

  def role_names
    roles.map { |role| role.name }
  end
end
