require 'rails_helper'

RSpec.describe "Post Sessions endpoint" do
  it "log in a user" do
    data_register = {
      "name": "meg",
      "email": "mstang15@gmail.com",
      "password": "password",
      "password_confirmation": "password"
    }

    post "/api/v1/users", params: data_register

    data_session = {
      "email": "mstang15@gmail.com",
      "password": "password"
    }

    post "/api/v1/sessions", params: data_session

    expect(response.status).to eq(200)
  end



end
