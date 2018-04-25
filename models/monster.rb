require_relative('../db/sql_runner')

class Monster
  attr_reader(:id)
  attr_accessor(:name, :species, :type, :known, :image, :description, :dr)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @species = options['species']
    @type = options['type']
    @known = options['known']
    @image = options['image']
    @description = options['description']
    @dr = options['dr']
  end

  def save()
    sql =  "INSERT INTO monsters (name, species, type, known, image, description, dr) VALUES ($1, $2, $3, $4, $5, $6, $7) RETURNING id;"
    values = [@name, @species, @type, @known, @image, @description, @dr]
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
      image,
      description,
      dr
    ) =
    (
      $1, $2, $3, $4, $5, $6, $7
    )
    WHERE id = $7"
    values = [@name, @species, @type, @known, @image, @description, @dr]
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

 def self.find_by_name(name)
   sql = "SELECT * FROM monsters WHERE id = $1;"
   values = [name]
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
    sql = "UPDATE monsters SET (name, species, type, known, image, description, dr) = ($1, $2, $3, $4, $5, $6, $7) WHERE id = $8;"
    values = [@name, @species, @type, @known, @image, @description, @dr, @id]
    SqlRunner.run(sql, values)
  end

  def self.filter_by_dr(dr)
    sql = "SELECT * FROM monsters WHERE monsters.dr >= $1;"
    values = [dr]
    results = SqlRunner.run(sql, values)
    return results.map{|result| Monster.new(result)}
  end

  def self.filter_by_type(type)
    sql = "SELECT * FROM monsters WHERE monsters.type = '$1';"
    values = [type]
    results = SqlRunner.run(sql, values)
    return results.map{|result| Monster.new(result)}
  end

end
