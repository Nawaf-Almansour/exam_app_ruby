class TestSerializer
  include FastJsonapi::ObjectSerializer
  has_many :questions
  attributes :uid, :name, :description

end
