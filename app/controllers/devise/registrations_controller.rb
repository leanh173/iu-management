class Devise::RegistrationsController < DeviseController
# before_action :configure_sign_up_params, only: [:create]
# before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    redirect_to new_user_session_path
  end
end