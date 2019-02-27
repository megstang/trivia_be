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

    data_register_2 = {
      "name": "mary",
      "email": "mary@gmail.com",
      "password": "password",
      "password_confirmation": "password"
    }

    post "/api/v1/users", params: data_register_2
  end

  it "saves a new game for the user" do
    get "/api/v1/users"
    expect(response.status).to eq(200)
    expect(JSON.parse(response.body)["data"].size).to eq(2)

  end


end
