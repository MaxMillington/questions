class CreateStrands < ActiveRecord::Migration
  def change
    create_table :strands do |t|
      t.string :name
      t.integer :standard_id
    end
  end
end
