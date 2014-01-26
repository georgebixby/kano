class AddColumnsToTest < ActiveRecord::Migration
  def change
    add_column :tests, :question_one, :text
    add_column :tests, :question_two, :text
  end
end
