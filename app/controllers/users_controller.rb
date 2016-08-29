class UsersController < BaseController
  def show
    @user = User.find_by id: params[:id]
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    if @user.update update_params
      flash[:success] = "Update successful"
      redirect_to user_path(@user)
    else
      render "edit"
    end
  end

  private
  def update_params 
    params.require(:user).permit [:password, :password_confirmation]
  end
end