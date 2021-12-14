class AddTestIndexOnQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :test, index: true
  end
end
