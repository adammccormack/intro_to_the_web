require "sinatra"
require "sinatra/reloader" if development?


get '/' do
  "Hello"
end

get '/secret' do
  "I'm Batman!"
end

get '/adam' do
  "Hi Matt"
end

get '/matt' do
  "Hi Adam"
end

get '/random-cat' do
  @name = ["Chester", "Finneas", "Dog Food"].sample
  erb(:index)
end

get '/doozy' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end








# http://localhost:4567
