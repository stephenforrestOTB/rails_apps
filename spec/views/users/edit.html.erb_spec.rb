require 'rails_helper'

RSpec.describe "users/edit", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "MyString",
      :password_digest => "MyString",
      :admin_comments => "MyText",
      :admin => false
    ))
  end

  it "renders the edit user form" do
    render

    assert_select "form[action=?][method=?]", user_path(@user), "post" do

      assert_select "input[name=?]", "user[username]"

      assert_select "input[name=?]", "user[password_digest]"

      assert_select "textarea[name=?]", "user[admin_comments]"

      assert_select "input[name=?]", "user[admin]"
    end
  end
end
