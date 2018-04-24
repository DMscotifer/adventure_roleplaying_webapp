require_relative('../db/sql_runner')

class Monster
  attr_reader(:id)
  attr_accessor(:name, :species, :type, :known, :image)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @species = options['species']
    @type = options['type']
    @known = options['known']
    @image = options['image']
  end

  def save()
    sql =  "INSERT INTO monsters (name, species, type, known, image) VALUES ($1, $2, $3, $4, $5) RETURNING id;"
    values = [@name, @species, @type, @known, @image]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def update()
    sql = "UPDATE monsters
    SET
    (
      name,
      species,
      type,
      known,
      image
    ) =
    (
      $1, $2, $3, $4, $5
    )
    WHERE id = $6"
    values = [@name, @species, @type, @known, @image]
    SqlRunner.run( sql, values )
  end

  def self.delete_all()
    sql = "DELETE FROM monsters;"
    SqlRunner.run(sql)
  end

 def delete()
   sql = "DELETE FROM monsters WHERE id = $1"
   values = [@id]
   SqlRunner.run(sql, values)
 end

  def self.find(id)
    sql = "SELECT * FROM monsters WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    return Monster.new(result)
  end


  def self.show_all()
    sql = "SELECT * FROM monsters WHERE monsters.id != 1;"
    results = SqlRunner.run(sql)
    return results.map{|result| Monster.new(result)}
  end

  def self.sort_by_name()
    sql = "SELECT * FROM monsters ORDER by name;"
    results = SqlRunner.run(sql)
    return results.map{ |result| Monster.new(result) }
  end

  def update()
    sql = "UPDATE monsters SET (name, species, type, known, image) = ($1, $2, $3, $4, $5) WHERE id = $6;"
    values = [@name, @species, @type, @known, @image, @id]
    SqlRunner.run(sql, values)
  end


end
