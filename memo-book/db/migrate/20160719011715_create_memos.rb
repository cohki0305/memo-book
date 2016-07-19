class CreateMemos < ActiveRecord::Migration
  def change
    create_table :memos do |t|
      t.integer :user_id
      t.string :title
      t.text :detail

      t.timestamps null: false
    end
  end
end
