class User < ApplicationRecord
  has_secure_password
  before_create :assign_session_token

  validates_presence_of :name,
                      :password

  validates :email, presence: true, uniqueness: true

  private

  def assign_session_token
    self.session_token = SessionService.new().get_token
  end
end
