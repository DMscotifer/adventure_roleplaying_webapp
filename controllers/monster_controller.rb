require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/monster.rb' )

get '/monsters' do
  @monsters = Monster.show_all()
  erb ( :"monsters/show")
end
