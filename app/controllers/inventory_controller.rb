class InventoryController < ApplicationController
  def show
    all_products = Products.all
    
    respond_to do |format|
      format.json { render :json => @straps }
    end
  end

  #Status enums
    STATUS = { :available => 0, :hold => 1, :sold => 2, :unavailable => 3 }

  #Category enums
    CATEGORY = { :vintage => 0, :new => 1, :merch => 3 }
end
