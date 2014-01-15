require 'bundler'
Bundler.require

class SpaceCats < Sinatra::Application

	get '/'
		@spacecats = SpaceCat.all
		erb :index
	end

	get '/:spacecat' do
		@spacecat = params[:spacecat]
		erb :spacecat
	end

	post '/results' do
		erb :results
	end


end