class AddTestsIndexOnQuestions < ActiveRecord::Migration[6.1]
  def change
    add_reference :questions, :tests, index: true
  end
end
