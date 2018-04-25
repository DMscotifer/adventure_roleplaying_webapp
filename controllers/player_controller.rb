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

get "/players/new" do
  erb(:"players/new")
end

get '/players/:id' do
  @player = Player.find(params['id'].to_i)
  erb(:"players/show")
end

post '/' do
  new_player = Player.new(params)
  new_player.save()
  redirect to '/'
end
