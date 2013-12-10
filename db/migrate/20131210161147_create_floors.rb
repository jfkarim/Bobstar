class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.integer :floor_number #string? do we involve LLs?
      
      t.timestamps
    end
    
    add_index :floors, :floor_number
  end
end
