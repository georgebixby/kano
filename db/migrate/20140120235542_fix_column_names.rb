class FixColumnNames < ActiveRecord::Migration
  def change
    rename_column :questions, :functional_question, :question_one
    rename_column :questions, :dysfunctional_question, :question_two
  end
end
