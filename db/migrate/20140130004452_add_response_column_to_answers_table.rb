class AddResponseColumnToAnswersTable < ActiveRecord::Migration
  def change
    add_column :answers, :response, :string
  end
end
