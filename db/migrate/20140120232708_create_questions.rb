class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :functional_question
      t.text :dysfunctional_question

      t.timestamps
    end
  end
end
