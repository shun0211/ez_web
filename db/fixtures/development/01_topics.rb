["Web 基礎知識", "プログラミング言語", "Git", "データベース"].each do |topic|
  Topic.find_or_create_by(
    name: topic,
    learning_stage: 0
  )
end
