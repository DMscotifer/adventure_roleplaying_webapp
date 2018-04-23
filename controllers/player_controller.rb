require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/' do
  erb ( :"index")
end

get '/players' do
  erb ( :"players/show")
end
