require 'pry'

class Market
  attr_reader :name, :vendors
  def initialize(name)
    @name = name
    @vendors = []
    vendor_names = []
  end

  def add_vendor(vendor_added)
    @vendors.push vendor_added
  end

  def vendor_names
    vendor_names = []
    @vendors.each do |vendor|
      vendor_names.push vendor.name
    end
    vendor_names
  end

  def vendors_that_sell(product)
    vendors_with_product = []
    @vendors.each do |vendor|
      vendors_with_product.push
      vendor if vendor.inventory.has_key?(product)
    end
    vendors_with_product
  end
  #   vendors_with_product = []
  #   @vendors.each do |vendor|
  #     if vendor.inventory.has_key?(product)
  #         vendors_with_product.push vendor
  #     end
  #     vendors_with_product
  #   end
  # end
end
