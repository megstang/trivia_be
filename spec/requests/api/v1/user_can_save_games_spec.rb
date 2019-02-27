require 'rails_helper'

RSpec.describe "Post Game endpoint" do
  before(:each) do
    data_register = {
      "name": "meg",
      "email": "mstang15@gmail.com",
      "password": "password",
      "password_confirmation": "password"
    }

    post "/api/v1/users", params: data_register
    @token = JSON.parse(response.body)["data"]["attributes"]["session_token"]
  end

  it "saves a new game for the user" do
    data_save_game = {
      "session_token": @token,
      "category": "Science: Math",
      "correct": 3,
      "num_questions": 10
    }

    post "/api/v1/games", params: data_save_game
    expect(response.status).to eq(200)
  end

  it "throws 400 error if not created" do
    data = {
      "name": "meg",
      "email": "mstang15@gmail.com",
      "password": "pasord",
      "password_confirmation": "password"
    }

    post "/api/v1/users", params: data
    expect(response.status).to eq(400)
  end


end
