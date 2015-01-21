class UsersController < ApplicationController
  def index
    @users = User.all 
  end

  def new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to root_path
      flash[:notice] = "Welcome, your account has been created"
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
    render :edit
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account has been updated"
      redirect_to @user 
    else
      render :edit
    end
  end

  def destroy
  end
end

# ADD PRIVATE DEF METHOD