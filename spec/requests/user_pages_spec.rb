require 'spec_helper'
describe "User pages" do
  let(:base_title) { "Ruby on rails Tutorial Sample App" }

  subject { page }

  describe "signup page" do
    it "should have the content 'Sign up'" do
      visit signup_path
      expect(page).to have_content('Sign up')
    end

    it "should have the title 'Sign up'" do
      visit signup_path
      expect(page).to have_title("#{base_title} | Sign up")
    end
  end
end
