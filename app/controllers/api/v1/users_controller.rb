class Api::V1::UsersController<ApplicationController

  def create
    user = User.create(user_params) if matching_passwords?
    if user!= nil && user.save
      render json: UserSerializer.new(user)
    else
      render :json => {:error => "Make sure passwords match, and a proper email address was provided"}.to_json, :status => 400
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation, :session_token)
  end

  def matching_passwords?
    params[:password] == params[:password_confirmation]
  end

end
