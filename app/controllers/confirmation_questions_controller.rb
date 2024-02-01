class ConfirmationQuestionsController < ApplicationController
  before_action :authenticate_user!

  def index
    @topic = Topic.find(params[:topic_id])
    @confirmation_questions = @topic.confirmation_questions.order(:id)
    @confirmation_answers_hash = @confirmation_questions.each_with_object({}) do |confirmation_question, hash|
      answer = confirmation_question.confirmation_answers.find_by(user_id: current_user.id) ||
        confirmation_question.confirmation_answers.create(user_id: current_user.id)
      hash[confirmation_question.id] = answer
    end
  end
end
