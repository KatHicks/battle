require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    $p_one = Player.new(params[:p1_name])
    $p_two = Player.new(params[:p2_name])
    redirect '/play'
  end

  get '/play' do
    @player_one = $p_one.name
    @player_two = $p_two.name
    erb(:play)
  end

  get '/attack' do
    @player_one = $p_one.name
    @player_two = $p_two.name
    erb(:attack)
  end


  run! if app_file == $0

end
