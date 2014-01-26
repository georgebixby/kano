class RemoveQuestionsFromTest < ActiveRecord::Migration
  def change
    remove_column :tests, :question_one, :text
    remove_column :tests, :question_two, :text
  end
end
