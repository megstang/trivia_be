require 'rails_helper'

RSpec.describe "Post User endpoint" do
  it "creates a new user" do
    # data = {
    #   "name": "meg",
    #   "email": "mstang15@gmail.com",
    #   "password": "password",
    #   "password_confirmation": "password"
    # }

    post "http://localhost:3000/api/v1/users?name=meg&email=mstang1@gmail.com&password=password&password_confirmation=password"
    expect(response.status).to eq(200)
  end


end
