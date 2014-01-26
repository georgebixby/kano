class ChangeUserIdToTest < ActiveRecord::Migration
  def change
    rename_column :answers, :user_id_id, :test_id
  end
end
