require("pry")

require("minitest/autorun")
require("minitest/rg")
require("pry-byebug")

require_relative("../models/monster.rb")

class MonsterTest < MiniTest::Test

  def setup()
    @monster1 = Monster.new(
      {
        "name" => "goblin",
        "species" => "goblinoid",
        "type" => "monstrous creature"
      }
    )
    @monster2 = Monster.new(
      {
        "name" => "naga",
        "species" => "naga",
        "type" => "aberation"
      }
    )
    @monster3 = Monster.new(
      {
        "name" => "red dragon",
        "species" => "red dragon",
        "type" => "dragon"
      }
    )
  end

  def test_monster_name
    assert_equal("red dragon", @monster3.name)
  end

  
end # of Class
