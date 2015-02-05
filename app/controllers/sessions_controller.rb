class SessionsController < ApplicationController

	def new
	end

	# def create
	# 	user = User.find_by(username: params[:username])
	# 	if user && user.authenticate(params[:password])
	# 		session[:current_user_id] = user.id 
	# 		redirect_to root_path
	# 	else
	# 		flash[:notice] = "Hmm, something's not right. Please check your email and password"
	# 		render :new
	# 	end
	# end

#Trying Treehouse version
# No flash messages appearing
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

# No flash message appearing on logout
	def destroy
		session[:current_user_id] = nil
		flash[:notice] = "You have successfully logged out."
		redirect_to root_path
	end

end

