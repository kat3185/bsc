class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :event_volunteers
  has_many :event_volunteer_slots, through: :event_volunteers
  has_many :user_roles, dependent: :destroy
  has_many :roles, through: :user_roles

  after_create :add_volunteer_as_role

  def full_name
    "#{first_name} #{last_name}"
  end

  def role_names
    roles.map { |role| role.name }
  end

  def add_volunteer_as_role
    UserRole.add_as_volunteer(self) if self.roles.empty?
  end
end
