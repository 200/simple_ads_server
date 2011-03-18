class CreateRequests < ActiveRecord::Migration
  def self.up
    create_table :requests do |t|
	  t.integer :zone_id
	  t.integer :banner_id
	  t.integer :views
	  t.integer :hits
      t.date :day
    end
  end

  def self.down
    drop_table :requests
  end
end
