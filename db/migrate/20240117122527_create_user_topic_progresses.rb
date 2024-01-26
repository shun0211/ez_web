class CreateUserTopicProgresses < ActiveRecord::Migration[7.1]
  def change
    create_table :topic_progresses do |t|
      t.references :user, null: false
      t.references :topic, null: false
      t.integer :status, null: false, default: 0
      t.datetime :completed_at
      t.timestamps
    end
  end
end
