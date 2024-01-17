class ConfirmationAnswersController < ApplicationController
  def bulk_update
    params[:questions].keys.each do |question_id|
      answer = ConfirmationAnswer.where(user_id: current_user.id, confirmation_question_id: question_id).first_or_initialize
      answer.answer = params[:questions][question_id]
      answer.save! if answer.changed?
    end
    redirect_to topics_path, notice: '回答を提出しました！'
  end
end