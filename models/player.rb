require_relative('../db/sql_runner')

class Player
  attr_reader( :name, :class, :inventory, :id)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @class = options['class']
    @inventory = options['inventory']
  end


  def save()
    sql =  "INSERT INTO players (name, class, inventory) VALUES ($1, $2, $3) RETURNING id;"
    values = [@name, @class, @inventory]
    result = SqlRunner.run(sql, values)
    @id = result[0]['id'].to_i
  end

  def self.delete_all()
    sql = "DELETE FROM players;"
    SqlRunner.run(sql)
  end

  
  

end
