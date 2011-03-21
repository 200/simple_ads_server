class RedisRequestController < ApplicationController

include 'RedisRequest'

def create
  save
end

end
