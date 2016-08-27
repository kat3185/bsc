require 'rails_helper'

RSpec.describe "user_roles/new", type: :view do
  before(:each) do
    assign(:user_role, UserRole.new(
      :user => nil,
      :role => nil
    ))
  end

  it "renders new user_role form" do
    render

    assert_select "form[action=?][method=?]", user_roles_path, "post" do

      assert_select "input#user_role_user_id[name=?]", "user_role[user_id]"

      assert_select "input#user_role_role_id[name=?]", "user_role[role_id]"
    end
  end
end
