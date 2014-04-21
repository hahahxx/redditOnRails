class SearchController < ApplicationController
	def index
		@links = Link.search(:title => params[:q])
	end
end
