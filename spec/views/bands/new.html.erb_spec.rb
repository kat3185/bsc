require 'rails_helper'

RSpec.describe "bands/new", type: :view do
  before(:each) do
    assign(:band, Band.new(
      :name => "MyString"
    ))
  end

  it "renders new band form" do
    render

    assert_select "form[action=?][method=?]", bands_path, "post" do

      assert_select "input#band_name[name=?]", "band[name]"
    end
  end
end
