class ScorecardsController < ApplicationController

  #undo after user & sessions set up. Don't want to have to
  # login every time trying to create new scorecard
  
   # before_action :require_login, :authenticate

  # private

  def require_login
    unless logged_in?
      # flash(:error) = "You must be logged in to create a scorecard"
      redirect_to new_login_url
    end
  end
 
  def index
    @scorecards = Scorecard.order(created_at: :desc)
    # render json: @scorecards 
  end

  def show
    @scorecard = Scorecard.find(params[:id])
    render :show
    # render json: @scorecard
  end

  def new
    @scorecard = Scorecard.new
    render :new
  end


#----------------------------------------
# Prior to adding authentication
#----------------------------------------
  def create
    @scorecard = Scorecard.create(scorecard_params)
    redirect_to @scorecard
  end

  def edit
    @scorecard = Scorecard.find(params[:id])
    if @scorecard.user != current_user
      redirect_to @scorecard
    else
    render :edit
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

#----------------------------------------
# Prior to adding authentication
#----------------------------------------
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
      redirect_to scorecard_path
      # render json: @scorecards 
    end
  end

 

  private 

  def scorecard_params
    params.require(:scorecard).permit(:date, :courseplayed, :hole1, :hole2, :hole3, :hole4, :hole5, 
      :hole6, :hole7, :hole8, :hole9, :hole10, :hole11, :hole12, :hole13, :hole14, :hole15, :hole16, 
      :hole17, :hole18, :total, :par1, :par2, :par3, :par4, :par5, :par6, :par7, :par8, :par9, :par10, 
      :par11, :par12, :par13, :par14, :par15, :par16, :par17, :par18, :TotalPar)
  end

 # 2/5 this doesn't resolve "back" button break
  # def scorecard_params
  #   params.require(:scorecard).permit(:date, :courseplayed, :hole1.to_i, :hole2.to_i, :hole3.to_i, :hole4.to_i, :hole5.to_i, 
  #     :hole6.to_i, :hole7.to_i, :hole8.to_i, :hole9.to_i, :hole10.to_i, :hole11.to_i, :hole12.to_i, :hole13.to_i, :hole14.to_i, :hole15.to_i, :hole16.to_i, 
  #     :hole17.to_i, :hole18.to_i, :total.to_i, :par1.to_i, :par2.to_i, :par3.to_i, :par4.to_i, :par5.to_i, :par6.to_i, :par7.to_i, :par8.to_i, :par9.to_i, :par10.to_i, 
  #     :par11.to_i, :par12.to_i, :par13.to_i, :par14.to_i, :par15.to_i, :par16.to_i, :par17.to_i, :par18.to_i, :TotalPar.to_i)
  # end

end
#----------------------------------------
# Prior to adding authentication
#----------------------------------------
  # def destroy
  #   @scorecard = Scorecard.find(params[:id])
  #   @scorecard.destroy
  #   # render json: @scorecard
  #   redirect_to root_path
  # end

  # def update
  #   @scorecard = Scorecard.find(params[:id])
  #   @scorecard.update(scorecard_params)
  #   render json: @scorecard
  # end

  # def update
  #   @scorecard = Scorecard.find(params[:id])
  #   if @scorecard.user !=  current_user
  #     redirect_to @scorecard
  #   else
  #     if @scorecard.update(scorecard_params)
  #       redirect_to @scorecard
  #     else
  #       render :edit
  #     end
  #   end
  # end











