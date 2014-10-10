class Market < ActiveRecord::Base
  belongs_to :users
  has_many :vendors, :through => :users
  has_many :products, :through => :vendor
end
