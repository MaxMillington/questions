class AddStrandReferenceToStandards < ActiveRecord::Migration
  def change
    add_reference :standards, :strand, index: true
    add_foreign_key :standards, :strands
  end
end
