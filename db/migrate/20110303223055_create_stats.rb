class CreateStats < ActiveRecord::Migration
  def self.up
    create_table :stats do |t|
      t.integer :views
      t.integer :hits
      t.date :day
      t.integer :zone_id
      t.integer :banner_id
    end
  end

  def self.down
    drop_table :stats
  end
end
