class AuthController < ApplicationController
	before_action :session_exists

	def new; end

	def create
		cookies[:username] = params[:username]
		redirect_to root_path
	end

	private

	def session_exists
		redirect_to root_path if cookies[:username]
	end
end
