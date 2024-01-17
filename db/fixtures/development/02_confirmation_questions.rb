require 'csv'

confirmation_questions = CSV.read('db/fixtures/csv/confirmation_questions.csv', headers: true)

ConfirmationQuestion.seed(
  confirmation_questions.map do |row|
    {
      id: row['id'],
      question: row['question'],
      topic_id: row['topic_id']
    }
  end
)
