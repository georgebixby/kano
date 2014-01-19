class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :title
      t.text :description
      t.text :question_one
      t.text :question_two

      t.timestamps
    end
  end
end
