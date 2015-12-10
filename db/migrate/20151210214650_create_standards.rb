class CreateStandards < ActiveRecord::Migration
  def change
    create_table :standards do |t|
      t.string :name
    end
  end
end
