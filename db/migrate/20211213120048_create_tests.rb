class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :uid
      t.string :name
      t.string :description
      t.integer :questions_id

      t.timestamps
    end
    add_index :tests, :questions_id
  end
end
