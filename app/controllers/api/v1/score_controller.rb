class Api::V1::ScoreController < ApplicationController

  def update
    user = User.find_by(session_token: params[:session_token])
    if user.save
      user.score += params[:score].to_i
      user.save!
    end
  end

end
