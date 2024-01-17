# == Schema Information
#
# Table name: learning_stages
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class LearningStage < ApplicationRecord
  has_many :topics

  validates :name, presence: true, uniqueness: true
end
