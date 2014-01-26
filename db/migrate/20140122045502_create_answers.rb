class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :user_id, index: true

      t.timestamps
    end
  end
end
