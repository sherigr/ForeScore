class CoursesController < ApplicationController
  def index
    @courses = Course.all 
    respond_to do |format| 
      format.html { render :index }
      format.json { render json: @courses }
    end
  end

  def show
    @course = Course.find(params[:id])
    respond_to do |format|
    format.html { render :show }
    format.json { render json: @course }
    end 
  end

  def new
    @course = Course.new
    render json: @course 
  end

#   def create
#   end

#   def edit
#   end

#   def update
#   end

#   def destroy
#   end
# end


# ADD PRIVATE DEF METHOD

# Use API key like this --> ENV["Active_Tee_Time_API_Key"] 