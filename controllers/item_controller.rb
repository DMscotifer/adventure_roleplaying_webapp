require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/item.rb' )

get '/items' do
  @items = Item.party_inventory()
  erb ( :"items/index")
end

get '/items/:id' do
  @item = Item.find(params['id'].to_i)
  erb(:"items/show")
end
