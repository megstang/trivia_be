class Api::V1::ScoreController < ApplicationController

  def update
    user = User.find_by(session_token: params[:session_token])
    if user.save
      user.score += params[:score].to_i
      user.save!
    end
  end

  def show
    user = User.find_by(session_token: params[:session_token])
    if user.save
      render :json => {:score => user.score}.to_json, :status => 200
    else
      render :json => {:error => "Cannot find user with this session token"}.to_json, :status =>404
    end
  end

end
