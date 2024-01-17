# == Schema Information
#
# Table name: confirmation_questions
#
#  id         :bigint           not null, primary key
#  question   :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :bigint           not null
#
# Indexes
#
#  index_confirmation_questions_on_topic_id  (topic_id)
#
require "test_helper"

class ConfirmationQuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
