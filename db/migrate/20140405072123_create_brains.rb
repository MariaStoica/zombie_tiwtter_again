class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.integer :zombie_id
      t.string :flavor
      t.string :status

      t.timestamps
    end
    
  end
end
