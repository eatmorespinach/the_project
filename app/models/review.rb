class Review < ActiveRecord::Base
  attr_accessible :description, :rating, :listing_id

  belongs_to :listings
  belongs_to :users

end
