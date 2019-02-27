require 'rails_helper'

RSpec.describe "Patch Score endpoint" do
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

  it "creates a new user" do
    data_score = {
      "session_token": @token,
      "score": 10
    }

    patch "/api/v1/score", params: data_score
    expect(response.status).to eq(204)
  end

end
