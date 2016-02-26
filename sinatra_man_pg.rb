require 'sinatra'

# root route
get '/' do 
  erb :home  
end

get '/cd' do
  erb :change_dir
end

get '/cp' do
  erb :copy
end

get '/ls' do
  erb :list
end

get '/mkdir' do
  erb :make_dir
end

get '/mv' do
  erb :move
end

get '/rm' do
  erb :remove
end

post '/search_for' do
  redirect "#{params['message']}"
end

not_found do
  status 404
  "This is not a part of the website."
end