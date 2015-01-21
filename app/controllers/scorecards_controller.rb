class ScorecardsController < ApplicationController
  def index
    @scorecards = Scorecard.order(:created_at)
  end

  def show
    @course = Course.find(params[:id])
    render :show 
  end

  def new
    render :new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end


# ADD PRIVATE DEF METHOD

ENV["Active_Tee_Time_API_Key"]