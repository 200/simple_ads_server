# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
Banner.create(:name => 'Ad-1', :ads_code => '123asd')
Zone.create(:name => 'Zone-1') 
Stat.create(:zone_id => 1, :banner_id => 1,
            :hits => 2, :views => 4, :day => Time.local(2011,3,2))
