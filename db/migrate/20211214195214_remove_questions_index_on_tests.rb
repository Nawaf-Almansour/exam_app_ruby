class RemoveQuestionsIndexOnTests < ActiveRecord::Migration[6.1]
  def change
    remove_index "tests", name: "index_tests_on_questions_id"

  end
end
