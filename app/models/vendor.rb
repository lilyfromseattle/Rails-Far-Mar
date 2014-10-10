class Vendor < ActiveRecord::Base
  # validates :name, presence: true
  # belongs_to :user
  # belongs_to :markets
  has_many :products
end
