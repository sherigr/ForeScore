class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:current_user_id] = user.id 
			redirect_to users_path
		else
			flash[:notice] = "Hmm, something's not right. Please check your email and password"
			render :new
		end
	end

#Trying Treehouse version
	# def create
	# 	user = User.find_by(username: params[:username])
	# 	if user && user.authenticate(params[:password])
	# 		session[:current_user_id] = user.id 
	# 		flash[:success] = "Thanks for logging in"
	# 		redirect_to root_path
	# 	else
	# 		flash[:error] = "Hmm, something's not right. Please check your email and password"
	# 		render :new
	# 	end
	# end


	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "You have successfully logged out."
		redirect_to root_path
	end

end

