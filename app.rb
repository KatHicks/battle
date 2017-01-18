require 'sinatra/base'

class Battle < Sinatra::Base

  set :sessions, true

  get '/' do
    erb(:index)
  end

  post '/names' do
    @player_one = params["Player 1"]
    @player_two = params["Player 2"]
    erb(:play)
  end

end
