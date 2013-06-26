# class LandingTest < ActionDispatch::IntegrationTest
#   # test "the truth" do
#   #   assert true
#   # end
# end

require 'spec_helper'

describe "Landing pages" do

  describe "Landing page" do

    it "should have the content 'Sample App'" do
      visit '/landing/index'
      page.should have_content('Sample App')
    end
  end
end