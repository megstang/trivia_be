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
    data_get_game = {
      "session_token": @token
    }

    get "/api/v1/games", params: data_get_game
    expect(response.status).to eq(200)
  end

  it "saves a new game for the user" do
    data_get_game = {
      "session_token": "123"
    }

    get "/api/v1/games", params: data_get_game
    error_message = JSON.parse(response.body)["error"]
    expect(response.status).to eq(400)
    expect(error_message).to eq("No user found with this session token")
  end



end
