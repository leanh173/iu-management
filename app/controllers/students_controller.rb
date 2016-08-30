class StudentsController < BaseController
  def new
    @student = Student.new
  end

  def index
    @students = Student.all
  end

  def create
    @student = Student.new
    if @student.update update_params
      flash[:success] = "Create successful"
      redirect_to students_path
    else
      render "new"
    end
  end

  def edit
    @student = Student.find_by id: params[:id]
  end

  def update
    @student = Student.find_by id: params[:id]
    if @student.update update_params
      flash[:success] = "Update successful"
      redirect_to students_path
    else
      render "new"
    end
  end

  def show
    @student = Student.find_by id: params[:id]
  end

  private
  def update_params 
    params.require(:student).permit [:name, :short_name, :start_date, :status, :dob,
      :address, :phone, :email, :skype, :bank_info, :note]
  end
end