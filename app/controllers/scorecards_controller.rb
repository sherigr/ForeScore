class ScorecardsController < ApplicationController

  #undo after user & sessions set up. Don't want to have to
  # login every time trying to create new scorecard
  
   # before_action :require_login, :authenticate

  # private

  def require_login
    unless logged_in?
      redirect_to new_login_url
    end
  end
 
  def index
    if current_user
      @scorecards = Scorecard.where(user_id:current_user.id).order(created_at: :desc)    
    else
      redirect_to new_user_path
    end
  end

  def show
    @scorecard = Scorecard.find(params[:id])
    render :show
  end

  def new
    if current_user
    @scorecard = Scorecard.new
    render :new
    else
      redirect_to new_user_path
    end
  end

  def create
    @scorecard = Scorecard.create(scorecard_params)
    redirect_to @scorecard
  end

  def edit
    @scorecard = Scorecard.find(params[:id])
    render :edit
  end

  def update
    @scorecard = Scorecard.find(params[:id])
    respond_to do |format|
      if @scorecard.update(scorecard_params)
        format.html { redirect_to scorecard_path(@scorecard) }
        format.json {render json: @scorecard}
      else
        format.html { render :edit }
        format.json {render json: @scorecard }
      end
    end
  end

  def destroy
    @scorecard = Scorecard.find(params[:id]) 
    if @scorecard.user != current_user
      redirect_to @scorecard
    else
      @scorecard.destroy
      redirect_to scorecards_path
    end
  end

  def total_score
    @scorecard = Scorecard.find(params[:id])
    @total = @scorecard.total_score()
    render json: @scorecard
  end

  def total_par
    @scorecard = Scorecard.find(params[:id])
    @TotalPar = @scorecard.total_par()
    render json: @scorecard
  end

  def search

  end



  private 

  def scorecard_params
    params.require(:scorecard).permit(:date, :courseplayed, :hole1, :hole2, :hole3, :hole4, :hole5, 
      :hole6, :hole7, :hole8, :hole9, :hole10, :hole11, :hole12, :hole13, :hole14, :hole15, :hole16, 
      :hole17, :hole18, :total, :par1, :par2, :par3, :par4, :par5, :par6, :par7, :par8, :par9, :par10, 
      :par11, :par12, :par13, :par14, :par15, :par16, :par17, :par18, :TotalPar, :user_id)
  end

end

