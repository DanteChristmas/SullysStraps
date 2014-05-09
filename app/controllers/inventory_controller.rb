class InventoryController < ApplicationController
  def index
    @all_products = Product.get_inventory_products

    respond_to do |format|
      format.json { render :json => @all_products }
    end
  end

  def show
    @all_products = Product.get_inventory_products

    respond_to do |format|
      format.json { render :json => @all_products }
    end
  end

  #Status enums
    STATUS = { :available => 0, :hold => 1, :sold => 2, :unavailable => 3 }

  #Category enums
    CATEGORY = { :vintage => 0, :new => 1, :merch => 3 }
end
