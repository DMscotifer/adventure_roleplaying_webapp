require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/monster.rb' )

get '/monsters' do
  @monsters = Monster.show_all()
  erb ( :"monsters/index")
end

get '/monsters/:id' do
  @monster = Monster.find(params['id'].to_i)
  erb(:"monsters/show")
end
