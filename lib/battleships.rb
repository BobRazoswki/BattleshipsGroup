require 'sinatra/base'
require_relative '../files'


class BattleShipsGroup < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", 'views') }

  enable :sessions

  get '/' do
    erb :index
  end

	get '/newgame' do
    puts 'halo'
    erb :newgame
  end

 post '/getreadytoplay' do
    name1 = params[:player1]
    @player1 = Player.new(name: name1, board: Board.new(content: Water.new))
    name2 = params[:player2]
    @player2 = Player.new(name: name2, board: Board.new(content: Water.new))
    puts @player1.board.grid
  	erb :getreadytoplay
  end

post '/newgame' do  # POST /newgame HTTP/1.1
  erb :newgame
 end

 get '/startplacingshipplayer1' do  # POST /newgame HTTP/1.1
  erb :placingshipsplayer1
 end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
