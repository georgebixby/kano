class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :answers, :response, :result
  end
end
