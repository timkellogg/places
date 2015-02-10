class Place 
	@@all_places = [] 

	define_method :initialize do |place|
		@place = place 
	end 
	
	define_method :place do |place|
		@place
	end 
	
	define_singleton_method :all do 
		@@all_places 
	end 
	
	define_method :save do 
		@@all_places.push self
	end 
	
	define_singleton_method :clear do 
		@@all_places = []
	end 
	
	define_method :remove do 
		@@all_places.delete self 
	end 
	
end 