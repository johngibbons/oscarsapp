require 'rails_helper'

RSpec.describe "nominees/new", type: :view do
  before(:each) do
    assign(:nominee, Nominee.new())
  end

  it "renders new nominee form" do
    render

    assert_select "form[action=?][method=?]", nominees_path, "post" do
    end
  end
end
