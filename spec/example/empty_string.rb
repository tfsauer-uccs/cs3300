require "rails_helper"

RSpec.describe "hello spec" do
  # creates a string with no content, if the variable is created successfully return true
  describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
      expect(string).to eq("")
    end
  end
 end