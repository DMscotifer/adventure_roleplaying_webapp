require_relative("../db/sql_runner")
require_relative("monster.rb")
require_relative("player.rb")


class Kill

  attr_reader :id
  attr_accessor :monster_id, :player_id, :kill_total


  def initialize(options)
    @id = options['id'].to_i if options['id']
    @monster_id = options['monster_id'].to_i
    @player_id = options['player_id'].to_i
    @kill_total = options['kill_total'].to_i
  end

  def save()
    sql = "INSERT INTO kills
    (
      monster_id,
      player_id,
      kill_total
    )
    VALUES
    (
      $1, $2, $3
    )
    RETURNING id"
    values = [@monster_id, @player_id, @kill_total]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM kills;"
    SqlRunner.run(sql)
  end

end
