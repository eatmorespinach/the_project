class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  has_many :reviews
  has_many :listings, :through => :reviews

  attr_accessible :email, :password, :password_confirmation
  
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email
  validates_uniqueness_of :email
end
