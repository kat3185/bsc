class AddIndexToUserRoles < ActiveRecord::Migration[5.0]
  def change
    add_index :user_roles, [:user, :role], unique: true
  end
end
