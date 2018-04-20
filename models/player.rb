require_relative('../db/sql_runner')

class Player_Char
  attr_reader( :name, :class, :inventory, :id)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @class = options['class']
    @inventory = options['inventory']
  end


end
