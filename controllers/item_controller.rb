require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/item.rb' )

get '/items' do
  erb ( :"items/show")
end
