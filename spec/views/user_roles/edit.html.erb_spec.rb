require 'rails_helper'

RSpec.describe "user_roles/edit", type: :view do
  before(:each) do
    @user_role = assign(:user_role, UserRole.create!(
      :user => nil,
      :role => nil
    ))
  end

  it "renders the edit user_role form" do
    render

    assert_select "form[action=?][method=?]", user_role_path(@user_role), "post" do

      assert_select "input#user_role_user_id[name=?]", "user_role[user_id]"

      assert_select "input#user_role_role_id[name=?]", "user_role[role_id]"
    end
  end
end
