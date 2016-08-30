class StudyCoursesController < BaseController
  def new
    @study_course = StudyCourse.new
  end

  def index
    @study_courses = StudyCourse.all
  end

  def create
    @study_course = StudyCourse.new
    if @study_course.update update_params
      flash[:success] = "Create successful"
      redirect_to student_path(@study_course.student)
    else
      render "new"
    end
  end

  def edit
    @study_course = StudyCourse.find_by id: params[:id]
  end

  def update
    @study_course = StudyCourse.find_by id: params[:id]
    if @study_course.update update_params
      flash[:success] = "Update successful"
      redirect_to student_path(@study_course.student)
    else
      render "new"
    end
  end

  def show
    @study_course = StudyCourse.find_by id: params[:id]
  end

  private
  def update_params 
    params.require(:study_course).permit [:teacher_id, :student_id, :course_id, :start_at]
  end
end