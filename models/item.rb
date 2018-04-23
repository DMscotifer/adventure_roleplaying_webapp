require_relative("../db/sql_runner")

class Item

  attr_reader :id
  attr_accessor :name, :player_id, :monster_id


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @player_id = options['player_id'].to_i
    @monster_id = options['monster_id'].to_i
  end

  def save()
    sql = "INSERT INTO items
    (
      name,
      player_id,
      monster_id
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @player_id, @monster_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM items;"
    SqlRunner.run(sql)
  end


end
