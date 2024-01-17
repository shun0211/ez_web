class CreateUserTopicProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :user_topic_progresses do |t|

      t.timestamps
    end
  end
end
