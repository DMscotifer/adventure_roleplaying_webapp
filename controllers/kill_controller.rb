require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/kills.rb' )
require_relative( '../models/monster.rb' )
require_relative( '../models/player.rb' )
require_relative( '../models/item.rb' )

get '/kill/:id1/:id2' do
  @hero = Player.find(params['id1'].to_i)
  @enemy = Monster.find(params['id1'].to_i)
  erb ( :"kill/battle")
end
