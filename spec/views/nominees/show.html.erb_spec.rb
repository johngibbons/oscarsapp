require 'rails_helper'

RSpec.describe "nominees/show", type: :view do
  before(:each) do
    @nominee = assign(:nominee, Nominee.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
