require 'rails_helper'

RSpec.describe "images/edit", type: :view do
  before(:each) do
    @image = assign(:image, Image.create!(
      user_id: "",
      title: "MyString",
      caption: "MyString",
      price: ""
    ))
  end

  it "renders the edit image form" do
    render

    assert_select "form[action=?][method=?]", image_path(@image), "post" do

      assert_select "input[name=?]", "image[user_id]"

      assert_select "input[name=?]", "image[title]"

      assert_select "input[name=?]", "image[caption]"

      assert_select "input[name=?]", "image[price]"
    end
  end
end
