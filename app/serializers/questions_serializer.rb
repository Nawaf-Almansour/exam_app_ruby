class QuestionsSerializer
  include FastJsonapi::ObjectSerializer
  attributes :uid, :name, :description, :option, :answer, :test_id
end
