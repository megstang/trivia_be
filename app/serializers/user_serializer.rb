class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :session_token
end
