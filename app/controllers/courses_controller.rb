class CoursesController < BaseController
  before_action :filter_params, only: [:create, :update]
  def new
    @course = Course.new
  end

  def index
    @courses = Course.all
  end

  def create
    @course = Course.new
    if @course.update update_params
      flash[:success] = "Create successful"
      redirect_to courses_path
    else
      render "new"
    end
  end

  def edit
    @course = Course.find_by id: params[:id]
  end

  def update
    @course = Course.find_by id: params[:id]
    if @course.update update_params
      flash[:success] = "Update successful"
      redirect_to courses_path
    else
      render "new"
    end
  end

  def show
    @course = Course.find_by id: params[:id]
  end

  private
  def filter_params
    [:time, :price_peso, :price_vnd, :rate_price].each do |key|
      params[:course][key] = params[:course][key].to_i
    end
  end
  def update_params 
    params.require(:course).permit [:name, :code, :level, :time, :price_peso, :price_vnd, :rate_price]
  end
end