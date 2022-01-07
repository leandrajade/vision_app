require 'rails_helper'

RSpec.describe "images/index", type: :view do
  before(:each) do
    assign(:images, [
      Image.create!(
        user_id: "",
        title: "Title",
        caption: "Caption",
        price: ""
      ),
      Image.create!(
        user_id: "",
        title: "Title",
        caption: "Caption",
        price: ""
      )
    ])
  end

  it "renders a list of images" do
    render
    assert_select "tr>td", text: "".to_s, count: 2
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "Caption".to_s, count: 2
    assert_select "tr>td", text: "".to_s, count: 2
  end
end
