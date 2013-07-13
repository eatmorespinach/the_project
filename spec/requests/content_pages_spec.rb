require 'spec_helper'

describe "ContentPages" do
  describe "Landing cat page" do

    it "should have the content 'teach'" do
      visit root_path
      page.should have_content('teach')
    end
  end
end
