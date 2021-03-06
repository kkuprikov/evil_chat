class ChatController < ApplicationController
	before_action :authenticate!

	def show
		@messages = Message.order(created_at: :asc).last(20)
	end

	private

	def authenticate!
		redirect_to login_path unless current_user
	end
end
