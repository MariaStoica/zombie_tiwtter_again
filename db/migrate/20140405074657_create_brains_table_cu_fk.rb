class CreateBrainsTableCuFk < ActiveRecord::Migration
  def change
      create_table :brains do |t|
          t.integer :zombie_id
          t.string :flavor
          t.string :status
          
          t.timestamps
      end
      # add fk
      add_index :brains, :zombie_id
  end
end
