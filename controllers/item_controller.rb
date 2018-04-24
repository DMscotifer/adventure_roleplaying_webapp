require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/item.rb' )

get '/items' do
  @items = Item.party_inventory()
  erb ( :"items/index")
end
