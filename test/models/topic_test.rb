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
require "test_helper"

class TopicTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
