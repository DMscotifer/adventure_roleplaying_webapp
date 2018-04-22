require_relative("../db/sql_runner")

class Item

  attr_reader :id
  attr_accessor :name, :monster_id, :player_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @monster_id = options['monster_id'].to_i
    @player_id = options['player_id'].to_i
  end

  def save()
    sql = "INSERT INTO items
    (
      name,
      monster_id,
      player_id
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@name, @monster_id, @player_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end
  
end
