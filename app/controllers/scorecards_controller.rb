class ScorecardsController < ApplicationController

  #undo after user & sessions set up. Don't want to have to
  # login every time trying to create new scorecard
  # before_action :require_login

  # private

  # def require_login
  #   unless logged_in?
  #     flash(:error) = "You must be logged in to create a scorecard"
  #     redirect_to new_login_url
  #     # check on login url
  #   end
  # end
 
  def index
    @scorecards = Scorecard.order(created_at: :desc)
  end

  def show
    @scorecard = Scorecard.find(params[:id])
    render :show 
  end

  def new
    @scorecard = Scorecard.new
    render :new
  end

  def create
    @scorecard = Scorecard.create(scorecard_params)
    render json: @scorecard
  end

  def edit
    @scorecard = Scorecard.find(params[:id])
    if @scorecard.user != current_user
      redirect_to @scorecard
    else
    render :edit
    end
  end

  # def update
  #   @scorecard = Scorecard.find(params[:id])
  #   @scorecard.update(scorecard_params)
  #   render json: @scorecard
  # end

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
    @scorecard.destroy
    # render json: @scorecard
    redirect_to root_path
  end

  private 

  def scorecard_params
    params.require(:scorecard).permit(:date, :courseplayed, :hole1, :hole2, :hole3, :hole4, :hole5, 
      :hole6, :hole7, :hole8, :hole9, :hole10, :hole11, :hole12, :hole13, :hole14, :hole15, :hole16, 
      :hole17, :hole18, :total, :par1, :par2, :par3, :par4, :par5, :par6, :par7, :par8, :par9, :par10, 
      :par11, :par12, :par13, :par14, :par15, :par16, :par17, :par18, :TotalPar)
  end

end


#this goes wherever I'm calling on API
# ENV["Active_Tee_Time_API_Key"]














