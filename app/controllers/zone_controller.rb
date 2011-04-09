class ZoneController < ApplicationController
  def update

    zoneToSave = Zone.find(params[:id])

    zoneToSave.attributes = { :name => params[:name_input], :description => params[:desc_input], :default_banner_id => params[:banner_id_input]}
    respond_to do |format|
      if zoneToSave.save
        @zoneUpdated = Zone.all  #variable contain updated data
        @updateStatus = "OK"  # update status if everything is okay
      format.js
      else
        @updateStatus = "Upsss, something wrong"  # update status is sth goes wrong

      end
    end

  end

  def edit
    @zones = Zone.all
  end

end
