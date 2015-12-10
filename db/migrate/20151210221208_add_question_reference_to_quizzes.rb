class AddQuestionReferenceToQuizzes < ActiveRecord::Migration
  def change
    add_reference :quizzes, :question, index: true
    add_foreign_key :quizzes, :questions
  end
end
