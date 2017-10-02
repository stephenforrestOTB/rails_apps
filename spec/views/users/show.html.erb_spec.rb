require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "Username",
      :password_digest => "Password Digest",
      :admin_comments => "MyText",
      :admin => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password Digest/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/false/)
  end
end
