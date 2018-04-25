require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/monster.rb' )


get '/monsters' do
  @monsters = Monster.show_all()
  erb ( :"monsters/index")
end

get "/monsters/new" do
  erb(:"monsters/new")
end

get '/monsters/dr' do
  @monsters = Monster.filter_by_dr(params['dr'].to_i)
  erb (:"monsters/dr")
end

get '/monsters/type' do
  @monsters = Monster.filter_by_type(params['type'])
  erb (:"monsters/type")
end


get '/monsters/:id' do
  @monster = Monster.find(params['id'].to_i)
  erb(:"monsters/show")
end

post '/' do
  new_monster = Monster.new(params)
  new_monster.save()
  redirect to '/'
end
