class UsersSerializer
  include FastJsonapi::ObjectSerializer
  attributes :uid, :name, :role, :email, :password_digest
end
