class GameSerializer
  include FastJsonapi::ObjectSerializer
  attributes :category,:num_questions,:correct, :difficulty
end
