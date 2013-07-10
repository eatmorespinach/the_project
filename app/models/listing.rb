class Listing < ActiveRecord::Base
  attr_accessible :description, :guests, :name
end
