class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.float :difficulty
    end
  end
end
