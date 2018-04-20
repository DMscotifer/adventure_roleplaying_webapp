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
        "type" => "monstrous humanoid"
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

  def test_monster_type
    assert_equal("monstrous humanoid", @monster1.type)
  end

  
end # of Class
