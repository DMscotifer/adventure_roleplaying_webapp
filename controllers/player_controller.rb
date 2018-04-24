require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/' do
  erb ( :"index")
end

get '/players' do
  @players = Player.show_all()
  erb ( :"players/index")
end

get '/players/:id' do
  @player = Player.find(params['id'].to_i)
  erb(:"players/show")
end
