require 'bundler'
Bundler.require

class SpaceCats < Sinatra::Application

	get '/'
		erb :index
	end

	get '/spacecats'
	  @spacecats = SpaceCat.all
  end

	get '/:spacecat' do
		@spacecat = params[:spacecat]
		erb :spacecat
	end

	post '/results' do
		erb :results
	end


end