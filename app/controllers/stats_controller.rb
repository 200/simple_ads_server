class StatsController < ApplicationController
  def index_by_date
    @stats = Stat.all(:conditions => ['day = ?', Time.parse(params[:day])])
    @day = params[:day] 
    @previous_day = (Time.parse(params[:day]) - 86400).strftime('%d-%m-%Y')
    @next_day = (Time.parse(params[:day]) + 86400).strftime('%d-%m-%Y')
  end
  
  def show_zone
    @stats - Stat.all(:conditions => ['zone_id = ?', params[:zone_id]) 
  end
end
