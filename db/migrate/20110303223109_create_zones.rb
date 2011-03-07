class CreateZones < ActiveRecord::Migration
  def self.up
    create_table :zones do |t|
      t.string :name
      t.text :description
      t.integer :default_banner_id
    end
  end

  def self.down
    drop_table :zones
  end
end
