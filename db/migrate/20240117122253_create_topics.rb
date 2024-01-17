class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.string :name, null: false
      t.integer :learning_stage
      t.text :description
      t.timestamps
    end
  end
end
