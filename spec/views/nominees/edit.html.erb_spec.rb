require 'rails_helper'

RSpec.describe "nominees/edit", type: :view do
  before(:each) do
    @nominee = assign(:nominee, Nominee.create!())
  end

  it "renders the edit nominee form" do
    render

    assert_select "form[action=?][method=?]", nominee_path(@nominee), "post" do
    end
  end
end
