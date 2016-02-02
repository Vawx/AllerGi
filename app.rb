require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'pg'
require './lib/allergen'
require './lib/keyword'
require './lib/yelpresult'
require 'pry'
require 'net/http'
require './lib/dish'
require './lib/restaurant'
require './lib/menuresult'
require './lib/locuresult'
require './lib/capitalize'
also_reload('./**/*.rb')

get '/' do
  erb :index
end

get '/restaurant/:id' do
  @restaurant = Restaurant.find(params[:id])
  @restaurant.update( {views: @restaurant.views + 1})
  @menu_items = @restaurant.dishes

  erb :restaurant
end

get '/search' do
  search = params.fetch('search_field').to_s
  result = Restaurant.where( 'name LIKE ?', "%" + search.cap_all + "%").all
  if result.length > 0
    @found = result
  end
  erb :index
end

get '/menu/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :menu
end

post '/menu/:id' do
  @restaurant = Restaurant.find(params[:id])

  count = 0
  dish_name = ""
  params.each do |p|
    if !p[0].include?("button") && !p[0].include?("splat") && !p[0].include?("captures") && !p[0].include?("id") && p[0].length > 0
      if count == 0
        dish_name = p[1]
        count += 1
      elsif count == 1
        new_dish = Dish.create( {name: dish_name, ingredients: p[1]} )
        new_dish.restaurants.push( @restaurant )
        dish_name = ""
        count = 0
      end
    end
  end
  redirect '/restaurant/' + @restaurant.id.to_s
end


#Yelp.configure
#@result = Yelp.client.search('Portland', {term: 'burger', category: 'restaurant'})

#@result.businesses.each do |r|
  #Restaurant.create( {name: r.name, phone: r.display_phone, location: r.location.display_address[ 0 ], views: 0})
#end
