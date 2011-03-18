class Request < ActiveRecord::Base

  require 'rubygems'
  require 'redis'

  def saveRedisRequest
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
  		
  		request = Request.new()
  		request.zone_id = @zone
  		request.banner_id = @banner
  	    request.shows = @shows
        request.views = @views
        request.day = Time.now
  		backend.save
  	end
  	
  end

end
