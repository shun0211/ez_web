user = User.find_by(email: "test@example.com")

Question.create!(
  user: user,
  title: "プログラミング言語について",
  content: "プログラミング言語について教えてください。"
)
