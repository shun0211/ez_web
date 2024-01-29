# == Schema Information
#
# Table name: questions
#
#  id         :bigint           not null, primary key
#  title      :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_questions_on_user_id  (user_id)
#
class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy

  has_rich_text :content

  validates :title, presence: true
  validates :content, presence: true
end
