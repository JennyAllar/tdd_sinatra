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
    if params[:id] == "0" || (params[:id].to_i < ITEMS_ARRAY.length && params[:id].to_i > 0)
      ITEMS_ARRAY[params[:id].to_i]
    else
      redirect not_found
    end
  end

  not_found do
    erb :not_found_404
  end
end