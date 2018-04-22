require_relative("../db/sql_runner")

class Item

  attr_reader :id
  attr_accessor :monster_id, :player_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @monster_id = options['monster_id'].to_i
    @player_id = options['player_id'].to_i
  end

  
end
