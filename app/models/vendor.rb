class Vendors < ActiveRecord::Base
  belongs_to :user
  belongs_to :markets
  has_many :products 
end
