class Comment < ActiveRecord::Base
	belongs_to :link
	belongs_to :user
	#attr_accessible :message, :user_id, :link_id
end
