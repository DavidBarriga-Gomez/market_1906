require 'pry'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/vendor'

class VendorTest < Minitest::Test
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_vendor_exists
    assert_instance_of Vendor, @vendor
  end

  def test_vendor_has_attributes
    expected_1 = {}
    assert_equal "Rocky Mountain Fresh", @vendor.name
    assert_equal expected_1, @vendor.inventory
  end

  def test_vendor_stock
    expected_1 = {"Peaches"=>55, "Tomatoes"=>12}
    assert_equal 0, @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 30)
    assert_equal 30, @vendor.check_stock("Peaches")
    @vendor.stock("Peaches", 25)
    assert_equal 55, @vendor.check_stock("Peaches")
    @vendor.stock("Tomatoes", 12)
    assert_equal expected_1, @vendor.inventory
  end
end
