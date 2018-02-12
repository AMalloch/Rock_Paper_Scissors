require('sinatra')
require('sinatra/contrib/all')
require_relative('./models/rockpaperscissors.rb')

get '/game/:string1/:string2' do
  string1 = params[:string1] # in brower its a string
  string2 = params[:string2] #params is what is put into route in brower i.e localhost:8742/add/3/2
  game = Rockpaperscissor.new(string1, string2)
  @outcome = game.result() #@calculation links to result.erb @calculation (global variable) between controller and view
  erb(:result) #name of result.erb file
end

get '/welcome' do
  erb(:welcome)
end
