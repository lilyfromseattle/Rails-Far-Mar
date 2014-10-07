class Market < ActiveRecord::Base
  def all_vendors
    vendor_array = []
    Vendor.all.each do |vendor|
      if vendor.market_name == self.name
        vendor_array << vendor
      end
    end
    vendor_array
  end

end
