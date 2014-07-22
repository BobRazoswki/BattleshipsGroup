require 'sinatra/base'
require_relative '../files'


class BattleShipsGroup < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", 'views') }

  get '/' do
    erb :index
  end

	get '/newgame' do
    erb :newgame
  end

 post '/getreadytoplay' do
  	erb :getreadytoplay
  end

  # post '/newgame' do  # POST /newgame HTTP/1.1
  #  Player.new (name: params[:Player1])
  # end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
