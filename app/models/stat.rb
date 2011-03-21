class Stat < ActiveRecord::Base
  belongs_to :zone
  belongs_to :banner

  require 'rubygems'
  require 'redis'

  def save_redis_request
    @r = Redis.new
    @r.KEYS(REQ).each do |req|
  	@r.SMEMBERS(req).each do |main_req|
  	  if main_req.split(':')[2] = 'show' then
  	    @shows = @r.SMEMBERS(main_req).SCARD
  	  elsif main_req.split(':')[2] = 'view'
            @views = @r.SMEMBERS(main_req).SCARD
  	  end
  		   
          @zone = main_req.split(':')[0]
          @banner = main_req.split(':')[1]
  	end
  		
      stats = Stat.new()
      stats.zone_id =   @zone
      stats.banner_id = @banner
      stats.shows =     @shows
      stats.views =     @views
      stats.day =       Time.now
      stats.save
    end
end
