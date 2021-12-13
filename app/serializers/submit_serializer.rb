class SubmitSerializer
  include FastJsonapi::ObjectSerializer
  attributes :uid, :marks, :test_id
end
