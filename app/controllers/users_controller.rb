class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@links = @user.links.all
  end
end
