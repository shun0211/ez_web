# == Schema Information
#
# Table name: topic_progresses
#
#  id           :bigint           not null, primary key
#  completed_at :datetime
#  status       :integer          default("not_started"), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  topic_id     :bigint           not null
#  user_id      :bigint           not null
#
# Indexes
#
#  index_topic_progresses_on_topic_id  (topic_id)
#  index_topic_progresses_on_user_id   (user_id)
#
class TopicProgress < ApplicationRecord
  belongs_to :user
  belongs_to :topic

  validates :topic_id, presence: true
  validates :user_id, presence: true, uniqueness: { scope: :topic_id }

  enum status: { not_started: 0, submitted: 10, pending_revision: 20, completed: 30 }
end
