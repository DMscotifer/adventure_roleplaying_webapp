require("pry")

require("minitest/autorun")
require("minitest/rg")
require("pry-byebug")

require_relative("../models/player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new(
      {
        "name" => "Anciano",
        "class" => "necromancer",
        "inventory" => ["staff", "dagger", "robes"]
      }
    )
  end

  def test_name()
    assert_equal("Anciano", @player1.name)
  end

  def test_class()
    assert_equal("necromancer", @player1.class)
  end


end # of Class
