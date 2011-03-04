class Banner < ActiveRecord::Base
  has_many :stats
  has_many :zones, :through => :stats
end
