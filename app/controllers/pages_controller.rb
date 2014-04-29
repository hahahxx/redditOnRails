class PagesController < ApplicationController
	def index
		@link = Link.all
		@links = Link.paginate(page: params[:page], per_page: 10) 	
		respond_to do |format|
  			format.html
  			format.js
  		end
	end
	def show
	end
end
