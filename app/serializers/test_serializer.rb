class TestSerializer
  include FastJsonapi::ObjectSerializer
  attributes :uid, :name, :description, :questions_id

  has_many :questions
end
