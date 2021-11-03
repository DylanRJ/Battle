require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end

  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_1_attack = session[:player_1_attack]
    @player_2_attack = session[:player_2_attack]
    erb(:play)
  end

  post '/play' do
    p params
    session[:player_1_attack] = params[:player_1_attack]
    session[:player_2_attack] = params[:player_2_attack]
    redirect '/play'
  end
end
