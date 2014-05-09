class Product < ActiveRecord::Base

	def self.get_inventory_products
		products = self.all
		if products
			products.map do | product |

	      hash = {
	        id: product["id"],
	        name: product["name"],
	        category: product["category"],
	        status: product["status"],
	        sub_section: product["sub_section"],
					price: product["price"]
	      }
	    end
	  end
	end

	def self.get_display_products
		products = self.all
		if products
			products.map do |product|

					hash = {
						id: product["id"],
						name: product["name"],
						category: product["category"],
						status: product["status"],
						sub_section: product["sub_section"],
						img_url: product["img_url"],
						strap_description: product["strap_description"],
						shoulder_description: product["shoulder_description"],
						is_showing: product["is_showing"]
					}
			end
		end
	end

	#Status enums
		STATUS = { :available => 0, :hold => 1, :sold => 2, :unavailable => 3 }

	#Category enums
		CATEGORY = { :vintage => 0, :new => 1, :merch => 3 }
end
