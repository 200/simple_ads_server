Given /^I have (\d+) days stats$/ do |arg1|
  Banner.create(:name => 'Ad-1', :ads_code => '123asd')
  Zone.create(:name => 'Zone-1') 
  if arg1.to_i == 1
    Stat.create(:zone_id => 1, :banner_id => 1, :hits => 2, :views => 4, :day => Time.local(2011,3,2))
  else
    arg1.to_i.times do |i|
      Stat.create(:zone_id => 1, :banner_id => 1, :hits => 2, :views => 4, :day => Time.local(2011,3,1+i))
    end
  end
end
