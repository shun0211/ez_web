class CreateLearningStages < ActiveRecord::Migration[7.1]
  def change
    create_table :learning_stages do |t|
      t.string :name, null: false
      t.timestamps
    end
  end
end
