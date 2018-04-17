class SessionsController < ApplicationController
	def new
	end

	def create
		#complete this method
		@user= User.find_by("LOWER(email) =?")
	end

	def destroy
		#complete this method
	end
end
