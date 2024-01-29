user = User.find_by(email: "test@example.com")
if user.nil?
  User.create!(
    name: "テストユーザー",
    email: "test@example.com",
    password: "password"
  )
end
