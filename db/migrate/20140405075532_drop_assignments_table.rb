class DropAssignmentsTable < ActiveRecord::Migration
  def up
      drop_table :assignments
  end
  
  def down
      create_table :assignments do |t|
          t.integer :zombie_id
          t.integer :role_id
          
          t.timestamps
      end
      add_index :assignments, :zombie_id
      add_index :assignments, :role_id
  end
end
