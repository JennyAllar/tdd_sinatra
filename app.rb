require 'sinatra/base'


class App < Sinatra::Base
  ITEMS_ARRAY = []

  get '/' do
    erb :index
  end

  get '/new' do
    erb :new
  end

  post '/' do
    name = params[:name]
    ITEMS_ARRAY << name
    redirect '/'
  end

  get '/:id' do
    ITEMS_ARRAY[params[:id].to_i]
  end
end