require 'rspec'
require './lib/places'

describe 'Place' do 
	before do 
		Place.clear 
	end 
	
	describe ".all" do 
		it "is empty at first" do 
			expect(Place.all()).to(eq([]))
		end 
	end 
	
	describe "#save" do
		it "adds a place to the all_places array" do
			new_place = Place.new "London"
			new_place.save 
			expect(Place.all()).to(eq([new_place]))
		end 
	end
	
	describe "#remove" do 
		it "removes a place from the all_place array" do 
			new_place = Place.new "Amsterdam"
			new_place.save
			newer_place = Place.new "Paris"
			newer_place.save
			new_place.remove
			expect(Place.all()).to(eq([newer_place]))
		end 
	end 
end 


