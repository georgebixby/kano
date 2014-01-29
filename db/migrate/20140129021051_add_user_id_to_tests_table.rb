class AddUserIdToTestsTable < ActiveRecord::Migration
  def change
    add_reference :tests, :user, index: true
  end
end
