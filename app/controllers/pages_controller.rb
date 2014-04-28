class PagesController < ApplicationController
	def index
		@link = Link.all
		@links = Link.paginate(page: params[:page], per_page: 10) 	
		respond_to do |format|
      		format.html
      		format.js # add this line for your js template
    	end	
	end
end
