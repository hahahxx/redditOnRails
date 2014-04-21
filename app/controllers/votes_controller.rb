class VotesController < ApplicationController
	def create
		

        @vote = current_user.votes.where(:link_id => params[:vote][:link_id]).first
		@vote ||= current_user.votes.create(vote_params)
		@vote.update_attributes(:up => params[:vote][:up])
		redirect_to :back


	end

	private
	def vote_params
		params.require(:vote).permit(:up, :link_id)
	end
end
