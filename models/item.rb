require_relative("../db/sql_runner")
require_relative("monster.rb")
require_relative("player.rb")


class Item

  attr_reader :id
  attr_accessor :name, :player_id, :monster_id, :pc_owned


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @player_id = options['player_id'].to_i
    @monster_id = options['monster_id'].to_i
    @pc_owned = options['pc_owned']
  end

  def save()
    sql = "INSERT INTO items
    (
      name,
      player_id,
      monster_id,
      pc_owned
    )
    VALUES
    (
      $1, $2, $3, $4
    )
    RETURNING id"
    values = [@name, @player_id, @monster_id, @pc_owned]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM items;"
    SqlRunner.run(sql)
  end

  def self.party_inventory()
    sql = "SELECT players.*, items.* FROM players INNER JOIN items ON players.id = items.player_id AND items.pc_owned = true ;"
    results = SqlRunner.run(sql)
    return results.map{|result| Item.new(result)}
  end

  def self.find(id)
    sql = "SELECT * FROM items WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    return Item.new(result)
  end

end
