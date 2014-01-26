class AddAnswersToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :answer_one, :string
    add_column :answers, :answer_two, :string
  end
end
