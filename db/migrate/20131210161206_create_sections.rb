class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :floor_id
      t.string :call_num

      t.timestamps
    end
    
    add_index :sections, :floor_id
    add_index :sections, :call_num
  end
end
