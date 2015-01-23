class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
      flash[:notice] = "Welcome, your account has been created"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to @user
    end
  end


  def update
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path
    else
      if @user.update(user_params)
        flash[:notice] = "Your account has been updated"
        redirect_to @user
        else 
        render :edit
      end
    end
  end

  def destroy
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to users_path
    else
      @user.destroy
      redirect_to users_path
    end
  end

  private 
  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password, :password_confirmation)
  end

end

