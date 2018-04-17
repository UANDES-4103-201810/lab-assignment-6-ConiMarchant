class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    @user= User.new(registration_params)
	    if @user.save
				flash.now[ :notice] = "User created succesfully"
				redirect_to root_path
			else
				flash.now[ :notice] = "Try again"
				redirect_to sign_in_path
	    #complete this method
			end

	end
	def registration_params
		params.require(:registration).permit(:name, :last_name, :email, :password, :phone)
	end
end
