class RemoveQuestionIdFromQuiz < ActiveRecord::Migration
  def change
    remove_column :quizzes, :question_id
  end
end
