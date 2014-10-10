class User < ActiveRecord::Base
  has_many :markets
  has_many :vendors
  has_many :products, :through => :vendor
end
