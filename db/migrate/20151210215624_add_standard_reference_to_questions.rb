class AddStandardReferenceToQuestions < ActiveRecord::Migration
  def change
    add_reference :questions, :standard, index: true
    add_foreign_key :questions, :standards
  end
end
