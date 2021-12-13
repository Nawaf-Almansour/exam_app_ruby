class CreateQuestions < ActiveRecord::Migration[6.1]
  def change
    create_table :questions do |t|
      t.string :uid
      t.string :name
      t.string :description
      t.text :option, array: true, default: []
      t.string :answer

      t.timestamps
    end
  end
end
