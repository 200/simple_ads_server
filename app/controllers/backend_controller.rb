class BackendController < ApplicationController

require 'rubygems'
require 'redis'

REQ = 0

def save_request
  @r = Redis.new 
  
  main_key = '#{params[:zone_id]}:#{params[:banner_id]}:#{params[:type]}'
  vh_key = '#{params[:zone_id]}:#{params[:banner_id]}:VH'
  
  @r.SADD main_key, time
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
end
