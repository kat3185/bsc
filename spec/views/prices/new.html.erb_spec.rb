require 'rails_helper'

RSpec.describe "prices/new", type: :view do
  before(:each) do
    assign(:price, Price.new(
      :general => "",
      :student => "",
      :discounted => 1
    ))
  end

  it "renders new price form" do
    render

    assert_select "form[action=?][method=?]", prices_path, "post" do

      assert_select "input#price_general[name=?]", "price[general]"

      assert_select "input#price_student[name=?]", "price[student]"

      assert_select "input#price_discounted[name=?]", "price[discounted]"
    end
  end
end
