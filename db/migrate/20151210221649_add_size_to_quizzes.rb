class AddSizeToQuizzes < ActiveRecord::Migration
  def change
    add_column :quizzes, :size, :integer
  end
end
