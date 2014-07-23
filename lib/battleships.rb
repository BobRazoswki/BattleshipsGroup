require 'sinatra/base'
require_relative '../files'


class BattleShipsGroup < Sinatra::Base

	set :views, Proc.new { File.join(root, "..", 'views') }

  enable :sessions

  get '/' do
    erb :index
  end

	get '/newgame' do
    erb :newgame
  end

 post '/getreadytoplay' do
    name1 = params[:player1]
    @player1 = Player.new(name: name1, board: Board.new(content: Water.new))
    name2 = params[:player2]
    @player2 = Player.new(name: name2, board: Board.new(content: Water.new))
  	@game = Game.new(player_one: @player1, player_two: @player2)
    puts @game.inspect
    erb :getreadytoplay

  end

  post '/newgame' do  # POST /newgame HTTP/1.1
    erb :newgame
   end


  # start the server if ruby file executed directly
  run! if app_file == $0

end
