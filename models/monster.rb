require_relative('../db/sql_runner')

class Monster
  attr_reader( :name, :species, :type, :id)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @species = options['species']
    @type = options['type']
  end

  def save()
    sql =  "INSERT INTO monsters (name, species, type) VALUES ($1, $2, $3) RETURNING id;"
    values = [@name, @species, @type]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def update()
    sql = "UPDATE monsters
    SET
    (
      name,
      species,
      type
    ) =
    (
      $1, $2, $3, $4
    )
    WHERE id = $5"
    values = [@name, @species, @type]
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

  def self.find_by_id(id)
    sql = "SELECT * FROM monsters WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)[0]
    return Monster.new(result)
  end

  def self.show_all()
    sql = "SELECT * FROM monsters;"
    results = SqlRunner.run(sql)
    return results.map{|result| Monster.new(result)}
  end
  
  def self.sort_by_name()
    sql = "SELECT * FROM monsters ORDER by name;"
    results = SqlRunner.run(sql)
    return results.map{ |result| Monster.new(result) }
  end

  def update()
    sql = "UPDATE monsters SET (name, species, type) = ($1, $2, $3) WHERE id = $4;"
    values = [@name, @species, @type, @id]
    SqlRunner.run(sql, values)
  end


end
