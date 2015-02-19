require 'rails_helper'

RSpec.describe "nominees/index", type: :view do
  before(:each) do
    assign(:nominees, [
      Nominee.create!(),
      Nominee.create!()
    ])
  end

  it "renders a list of nominees" do
    render
  end
end
