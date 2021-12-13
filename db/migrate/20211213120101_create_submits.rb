class CreateSubmits < ActiveRecord::Migration[6.1]
  def change
    create_table :submits do |t|
      t.string :uid
      t.integer :marks
      t.integer :test_id

      t.timestamps
    end
    add_index :submits, :test_id
  end
end
