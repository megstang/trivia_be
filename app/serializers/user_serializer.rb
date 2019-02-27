class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :session_token, :name, :score, :email
end
