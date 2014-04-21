class PagesController < ApplicationController
	def index
		@link = Link.all
		@links = Link.paginate(page: params[:page], per_page: 10) 
		
	end
end
