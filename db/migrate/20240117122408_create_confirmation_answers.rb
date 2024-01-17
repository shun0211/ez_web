class CreateConfirmationAnswers < ActiveRecord::Migration[7.1]
  def change
    create_table :confirmation_answers do |t|

      t.timestamps
    end
  end
end
