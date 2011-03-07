class Zone < ActiveRecord::Base
  has_many :stats
  has_many :banners, :through => :stats
end
