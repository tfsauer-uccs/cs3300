require "rails_helper"

#returns true if the equation 6*7 is equal to 42

RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(42)
  end
end