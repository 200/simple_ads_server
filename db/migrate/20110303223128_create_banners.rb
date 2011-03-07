class CreateBanners < ActiveRecord::Migration
  def self.up
    create_table :banners do |t|
      t.string :name
      t.text :ads_code
      t.text :description
    end
  end

  def self.down
    drop_table :banners
  end
end
