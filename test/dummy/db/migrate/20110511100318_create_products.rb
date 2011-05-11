class CreateProducts < ActiveRecord::Migration
  def self.up
    create_table :products do |t|
      t.string :reference
      t.decimal :price, :precision => 8, :scale => 2, :default => 0.00, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :products
  end
end
