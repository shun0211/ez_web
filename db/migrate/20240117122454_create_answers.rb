class CreateAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :answers do |t|
      t.text :content, null: false
      t.references :question, null: false
      t.references :user, null: false
      t.timestamps
    end
  end
end
