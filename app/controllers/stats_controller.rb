class StatsController < ApplicationController
  def index_by_date
    @stats = Stat.all(:conditions => ['day = ?', Time.parse(params[:day])])
    @day = params[:day] 
    @previous_day = (Time.parse(params[:day]) - 86400).strftime('%d-%m-%Y')
    @next_day = (Time.parse(params[:day]) + 86400).strftime('%d-%m-%Y')
  end
end
