require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do
    it "ensures the description is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

  context "scopes tests" do
    let(:params) { {title: "Title", description: "some description" } }
    before(:each) do
        Project.create(params)
        Project.create(params)
        Project.create(params)
    end

    it "should return all projects" do
        expect(Project.count).to eq(3)
    end

  context "Create new Project" do
    before(:each) do
      user = FactoryBot.create(:user)
      login_as(user)
      visit new_project_path
      within("form") do
        fill_in "Title", with: "Test title"  
      end  
    end
  end
end