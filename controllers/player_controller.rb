require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/player.rb' )

get '/' do
  erb ( :"index")
end
