class CreateZombies < ActiveRecord::Migration
  def change
    create_table :zombies do |t|
      t.string :name
      t.text :bio
      t.integer :age
      t.string :graveyard
      t.string :email
      t.boolean :rotting

      t.timestamps
    end
  end
end
