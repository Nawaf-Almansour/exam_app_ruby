class RemoveTestsIndexOnQuestions < ActiveRecord::Migration[6.1]
  def change
    remove_index "questions", name: "index_questions_on_tests_id"
  end
end
