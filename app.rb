require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session["Player 1"] = params["Player 1"]
    session["Player 2"] = params["Player 2"]
    redirect to('/play')
  end

  get '/play' do
    @player_one = session["Player 1"]
    @player_two = session["Player 2"]
    erb(:play)
  end

  run! if app_file == $0

end
