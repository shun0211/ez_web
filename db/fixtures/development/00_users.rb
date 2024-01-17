user = User.find_by(email: "test@example.com")
if user.nil?
  User.create!(
    email: "test@example.com",
    password: "password"
  )
end
