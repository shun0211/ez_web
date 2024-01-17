class CreateConfirmationAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :confirmation_answers do |t|
      t.references :user, null: false
      t.references :confirmation_question, null: false
      t.text :answer
      t.boolean :correct
      t.timestamps
    end
  end
end
