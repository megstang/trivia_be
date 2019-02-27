require 'rails_helper'

RSpec.describe "Post User endpoint" do
  it "creates a new user" do
    data = {
      "name": "meg",
      "email": "mstang15@gmail.com",
      "password": "password",
      "password_confirmation": "password"
    }

    post "/api/v1/users", params: data
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
