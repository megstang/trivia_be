require 'rails_helper'

RSpec.describe Game, type: :model do

  describe 'validations' do
    it {should validate_presence_of(:category)}
    it {should validate_presence_of(:correct)}
    it {should validate_presence_of(:num_questions)}
    it {should belong_to(:user)}
  end

end
