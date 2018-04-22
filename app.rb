require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative("controllers/monster_controller.rb")
require_relative("controllers/player_controller.rb")
require_relative("controllers/item_controller.rb")

get '/' do
  erb( :index )
end
