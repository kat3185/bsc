require 'rails_helper'

RSpec.describe "user_roles/show", type: :view do
  before(:each) do
    @user_role = assign(:user_role, UserRole.create!(
      :user => nil,
      :role => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
