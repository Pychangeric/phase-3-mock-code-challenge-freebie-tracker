class CreateFreebie < ActiveRecord::Migration[6.1]
  def change
    create_table :freebies do |t|
      # Add the necessary columns for your 'freebies' table
      t.string :name
      t.integer :quantity
      # ...
      
      t.timestamps
    end
  end
end
