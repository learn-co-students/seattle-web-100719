require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    erb :index
  end
  
  get '/about' do
    erb :about
  end

  get '/menu' do
    @items = MenuItem.all
    erb :'menu/index'
  end

  get '/menu/:name' do
    @item = MenuItem.all.find do |item|
      item.name == params[:name]
    end
    erb :'menu/show'
  end

  get '/menu/new' do
    erb :'menu/new'
  end

  post '/menu' do
    # access POST data
    name = params[:name]
    price = "$" + params[:price]

    # create new MenuItem
    MenuItem.new(name, price)

    @items = MenuItem.all
    erb :'menu/index'
  end

  get '/tip-calculator' do
    erb :'tip-calculator'
  end

  post '/tip-calculator' do
    params
    byebug

    @total_price = 
      params[:price1].to_f +
      params[:price2].to_f +
      params[:price3].to_f
    erb :'tip-calculator-result'
  end

  get '/dynamic/:subject/:predicate/:verb' do
    "The #{params[:subject]} #{params[:predicate]} #{params[:verb]}."
  end

  get '/distance/lat/:lat/lng/:lng' do
    lat = params[:lat].to_f
    lng = params[:lng].to_f

    seattle_lat = 47.6062
    seattle_lng = 122.3321
    
    dlat = lat - seattle_lat
    dlng = lng - seattle_lng

    distance = Math.sqrt(dlat * dlat + dlng * dlng)
    "You're distance from Seattle is #{distance}"
  end
end