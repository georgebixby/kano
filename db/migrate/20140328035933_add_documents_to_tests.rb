class AddDocumentsToTests < ActiveRecord::Migration
  def self.up
    add_attachment :tests, :document
  end

  def self.down
    remove_attachment :tests, :document
  end
end
