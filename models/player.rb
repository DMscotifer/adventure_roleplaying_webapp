require_relative('../db/sql_runner')


class Player
  attr_reader(:id)
  attr_accessor(:name, :class, :image, :description )

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @class = options['class']
    @image = options['image']
    @description = options['description']
  end


  def save()
    sql =  "INSERT INTO players (name, class, image, description) VALUES ($1, $2, $3, $4) RETURNING id;"
    values = [@name, @class, @image, @description]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM players;"
    SqlRunner.run(sql)
  end

  def self.show_all()
    sql = "SELECT * FROM players WHERE players.id != 1;"
    results = SqlRunner.run(sql)
    return results.map{|result| Player.new(result)}
  end

  def update()
    sql = "UPDATE players
    SET
    (
      name,
      class,
      image,
      description
    ) =
    (
      $1, $2, $3, $4
    )
    WHERE id = $5"
    values = [@name, @class, @image, @description, @id]
    SqlRunner.run( sql, values )
  end

  def self.find(id)
    sql = "SELECT * FROM players WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    return Player.new(result)
  end

end
