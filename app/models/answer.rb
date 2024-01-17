# == Schema Information
#
# Table name: answers
#
#  id          :bigint           not null, primary key
#  content     :text(65535)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  question_id :bigint           not null
#  user_id     :bigint           not null
#
# Indexes
#
#  index_answers_on_question_id  (question_id)
#  index_answers_on_user_id      (user_id)
#
class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question

  validates :content, presence: true
end
