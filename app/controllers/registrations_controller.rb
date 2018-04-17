class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    @user= User.new(registration_params)
	    if @user.save
				cookies.signed[ :user_id]=@user.id
				redirect_to root_path
				flash.now[ :notice] = "User created succesfully"
			else
				redirect_to sign_in_path
				flash.now[ :notice] = "Try again"
	    #complete this method
			end

	end
	def registration_params
		params.require(:user).permit(:name, :last_name, :email, :password, :phone)
	end
end