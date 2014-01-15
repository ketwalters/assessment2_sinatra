class SpaceCat < ActiveRecord::Base
	attr_accessor :name, :home, :planet, :superpower

	def initialize(name, home, planet, tagline, superpower)
		@name = name
		@home = home
		@planet = planet
		@tagline = tagline
		@superpower = superpower
	end
	
end