class CreateConfirmationQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :confirmation_questions do |t|

      t.timestamps
    end
  end
end
