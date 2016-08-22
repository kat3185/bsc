require 'rails_helper'

RSpec.describe "prices/edit", type: :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :general => "",
      :student => "",
      :discounted => 1
    ))
  end

  it "renders the edit price form" do
    render

    assert_select "form[action=?][method=?]", price_path(@price), "post" do

      assert_select "input#price_general[name=?]", "price[general]"

      assert_select "input#price_student[name=?]", "price[student]"

      assert_select "input#price_discounted[name=?]", "price[discounted]"
    end
  end
end
