require 'rails_helper'

RSpec.describe "prices/show", type: :view do
  before(:each) do
    @price = assign(:price, Price.create!(
      :general => "",
      :student => "",
      :discounted => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/2/)
  end
end
