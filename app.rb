require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    redirect '/play'
  end

  get '/play' do
    @player_one = session[:p1_name]
    @player_two = session[:p2_name]
    @attack     = session[:attack]
    erb(:play)
  end

  post '/attack' do
    session[:attack] = true
    redirect '/play'
  end

  run! if app_file == $0

end
