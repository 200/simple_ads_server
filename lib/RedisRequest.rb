module RedisRequest

require 'rubygems'
require 'redis'

REQ = 0
  
def save

  @r = Redis.new
  main_key = '#{params[:zone_id]}:#{params[:banner_id]}:#{params[:type]}'
  vh_key = '#{params[:zone_id]}:#{params[:banner_id]}:VH'
  
  @r.SADD main_key, params[:time]
  if !main_key.EXIST then
    EXPIRE main_key 86400
  end
  
  @r.SADD vh_key, main_key
  if !vh_key.EXIST then
    EXPIRE vh_key 86400
  end
    
  @r.SADD REQ, vh_key
  EXPIRE REQ 86400
  
  INCR REQ
end

def get

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

   stats = Stat.new()
   stats.zone_id =   @zone
   stats.banner_id = @banner
   stats.shows =     @shows
   stats.views =     @views
   stats.day =       Time.now
   stats.save
  end  
 end
end

end
