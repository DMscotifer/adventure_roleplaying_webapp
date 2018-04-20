require_relative('../db/sql_runner')

class Monster
  attr_reader( :name, :species, :type, :id)

  def initialize( options )
    @id = options['id'].to_i if options["id"]
    @name = options['name']
    @species = options['species']
    @type = options['type']
  end


end
