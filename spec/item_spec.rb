require("pry")

require("minitest/autorun")
require("minitest/rg")
require("pry-byebug")

require_relative("../models/item.rb")

class ItemTest < MiniTest::Test

  def setup()

  end

def test_party_inventory()
  sample = (
    Item.party_inventory
    results.map{|result| Item.new(result)}
  )
  assert_equals(false, sample.include("placeholder"))
end
binding.pry

end
