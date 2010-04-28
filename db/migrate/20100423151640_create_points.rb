class CreatePoints < ActiveRecord::Migration
  def self.up
    create_table :points do |t|
      t.integer :value, :default => 1
      t.references :post, :null => false
      t.references :user, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :points
  end
end
