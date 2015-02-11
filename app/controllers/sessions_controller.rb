class SessionsController < ApplicationController

	def new
	end

	# Create New Session
	def create
		user = User.find_by(username: params[:username])
		if user && user.authenticate(params[:password])
			session[:current_user_id] = user.id 
			flash[:notice] ="Welcome back"
			redirect_to scorecards_path
		else
			flash[:notice] = "Hmm, something's not right. Please check your email and password"
			redirect_to login_path
		end
	end

# End Session
	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "You have successfully logged out."
		redirect_to root_path
	end

end

