require 'rails_helper'

RSpec.describe "Get Score endpoint" do
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

  it "can get score from get api/v1/score" do

    data_score = {
      "session_token": @token
    }

    get "/api/v1/score", params: data_score

    score = JSON.parse(response.body)["score"]
    expect(response.status).to eq(200)
    expect(score).to eq(0)
  end

  it "returns error if user not found" do

    data_score = {
      "session_token": @token
    }

    get "/api/v1/score", params: data_score

    score = JSON.parse(response.body)["score"]
    expect(response.status).to eq(200)
    expect(score).to eq(0)
  end


end
