class DropBrainsTable < ActiveRecord::Migration
  def up
      drop_table :brains
  end
  
  def down
      create_table :brains do |t|
          t.integer :zombie_id
          t.string :flavor
          t.string :status
          
          t.timestamps
      end
      # add the foreign key
      add_index :brains, :zombie_id
  end
end
