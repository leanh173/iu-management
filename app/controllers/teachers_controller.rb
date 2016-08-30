class TeachersController < BaseController
  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = Teacher.all
  end

  def create
    @teacher = Teacher.new
    if @teacher.update update_params
      flash[:success] = "Create successful"
      redirect_to teachers_path
    else
      render "new"
    end
  end

  def edit
    @teacher = Teacher.find_by id: params[:id]
  end

  def update
    @teacher = Teacher.find_by id: params[:id]
    if @teacher.update update_params
      flash[:success] = "Update successful"
      redirect_to teachers_path
    else
      render "new"
    end
  end

  def show
    @teacher = Teacher.find_by id: params[:id]
  end

  private
  def update_params
    params.require(:teacher).permit [:name, :short_name, :status, :dob,
      :address, :certificate, :swot, :phone, :email, :skype, :bank_info, :note]
  end
end