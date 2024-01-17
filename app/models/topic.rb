# == Schema Information
#
# Table name: topics
#
#  id             :bigint           not null, primary key
#  description    :text(65535)
#  learning_stage :integer
#  name           :string(255)      not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
class Topic < ApplicationRecord
  has_many :confirmation_questions, dependent: :destroy
  has_many :user_topic_progresses, dependent: :destroy

  enum learning_stage: { basic: 0, advanced: 1, portfolio: 2, interviewing: 3 }

  validates :name, presence: true, uniqueness: true
end
