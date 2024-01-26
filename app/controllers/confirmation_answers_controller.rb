class ConfirmationAnswersController < ApplicationController
  def bulk_update
    params[:questions].keys.each do |question_id|
      answer = ConfirmationAnswer.where(user_id: current_user.id, confirmation_question_id: question_id).first_or_initialize
      answer.answer = params[:questions][question_id]
      answer.save! if answer.changed?
    end

    if params[:status] == "submitted"
      slack_notifier.ping "#{current_user.id}さんの回答が提出されました🎉" if Rails.env.production?
      redirect_to topics_path, notice: '回答を提出しました🎉'
    elsif params[:status] == "draft"
      redirect_to confirmation_questions_path(topic_id: topic.id), notice: '回答を一時保存しました👍'
    end
  end

  private

  def topic
    @topic ||= Topic.find(params[:topic_id])
  end
end