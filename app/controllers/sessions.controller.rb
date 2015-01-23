class SessionsController < ApplicationController

	def new
	end

	# def create
	# 	user = User.find_by(username: params[:username])
	# 	if user && user.authenticate(params[:password])
	# 		session[:current_user_id] = user.id 
	# 		redirect_to users_path
	# 	else
	# 		redirect_to login_path
	# 		#render :new
	# 	end
	# end

#Trying Treehouse version
	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:current_user_id] = user.id 
			flash[:success] = "Thanks for logging in"
			redirect_to root_path
		else
			flash[:error] = "Hmm, something's not right. Please check your email and password"
			render :new
		end
	end


	def destory
		session[:current_user_id] = nil
		flash[:notice] = "You have successfully logged out."
		redirect_to users_path
	end
end

# ?? ADD PRIVATE DEF METHOD