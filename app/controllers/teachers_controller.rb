class TeachersController < BaseController
  def new
    @teacher = Teacher.new
  end

  def index
    @teachers = Teacher.all
  end
end