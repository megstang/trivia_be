class Api::V1::GamesController<ApplicationController

  def create
    user = User.find_by(session_token: user_params[:session_token])
    if user!= nil && user.save
      Game.create(game_params(user))
      render :json => {:success => "Game Saved!"}.to_json, :status => 200
    else
      render :json => {:error => "Game unable to be saved."}.to_json, :status => 400
    end
  end

  def index
    user = User.find_by(session_token: user_params[:session_token])
    if user!= nil && user.save
      render json: GameSerializer.new(user.games)
    else
      render :json => {:error => "No user found with this session token"}.to_json, :status => 400
    end
  end

  private

  def user_params
    params.permit(:session_token,:category,:correct,:num_questions)
  end

  def game_params(user)
    user_id = user.id
    return {user_id: user_id, category: user_params[:category], num_questions: user_params[:num_questions], correct: user_params[:correct] }
  end

end
