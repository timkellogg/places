require 'sinatra'
require './lib/places.rb'

get '/' do 
	@places = Place.all
	erb :index
end 


post '/places' do 
	where = params.fetch "where"
	place = Place.new where
	place.save 
	erb :success 
end 