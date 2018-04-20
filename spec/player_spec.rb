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

  def save()
    sql =  "INSERT INTO players (name, class, inventory) VALUES ($1, $2, $3) RETURNING id;"
    values = [@name, @class, @inventory]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end


  
end # of Class
