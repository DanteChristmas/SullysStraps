class ProductsController < ApplicationController
	def index
		@straps = Product.all
		respond_to do |format|
			format.json { render :json => @straps }
		end
	end

	def show
		if params[:id] == "vintage"
			p = Product.where(category: CATEGORY[:vintage])
			@straps = p.where('status=? OR status=?', STATUS[:available], STATUS[:sold])
		else
			@straps = Product.find([params[:id]])
		end
		respond_to do |format|
			format.json { render :json => @straps }
		end
	end
	
	#Status enums
		STATUS = { :available => 0, :hold => 1, :sold => 2, :unavailable => 3 }
	
	#Category enums
		CATEGORY = { :vintage => 0, :new => 1, :merch => 3 }
end
