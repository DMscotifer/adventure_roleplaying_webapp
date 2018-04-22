require("pry")

require("minitest/autorun")
require("minitest/rg")
require("pry-byebug")

require_relative("../models/monster.rb")

class MonsterTest < MiniTest::Test

  def setup()
@monster1 = Monster.new(
  {
    "name" => "black pudding",
    "species" => "ooze",
    "type" => "ooze"
  }
)

@monster2 = Monster.new(
  {
    "name" => "dark naga",
    "species" => "naga",
    "type" => "aberration"
  }
)

@monster3 = Monster.new(
  {
    "name" => "mohrg",
    "species" => "undead",
    "type" => "undead"
  }
)

@monster4 = Monster.new(
  {
    "name" => "nabasu",
    "species" => "demon",
    "type" => "outsider"
  }
)

@monster5 = Monster.new(
  {
    "name" => "cloakers",
    "species" => "aberration",
    "type" => "aberration"
  }
)

@onster6 = Monster.new(
  {
    "name" => "wraiths",
    "species" => "incorporeal undead",
    "type" => "undead"
  }
)

  end

  def test_monster_name
    assert_equal("mohrg", @monster3.name)
  end

  def test_monster_type
    assert_equal("ooze", @monster1.type)
  end
  
  def test_find_by_id()
    test = Monster.find_by_id(2)
    assert_equal("dark naga", test.name)
  end

  def test_update()
    test = Monster.find_by_id()
  end
end # of Class
