class LinksController < ApplicationController
  def show
    @link = Link.find(params[:id])
    @comment = Comment.new
  end

  def new
  	@link = Link.new
  end

  def create
		@link = Link.new(link_params)
    @comment = Comment.new
		respond_to do |format|
  		if @link.save
   		 		format.html { render :action => "show" }
   		 		format.json { render :json => @link }
          
 			else
    		 format.html { render :action => "new" }
  		 	 format.json { render :json => @link.errors, :status => :unprocessable_entity }
 			end
		end  
  end

  private
  def link_params
    params.require(:link).permit(:title, :url)
  end
end
