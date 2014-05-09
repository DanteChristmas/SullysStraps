class Product < ActiveRecord::Base

	def self.get_inventory_products
		products = self.all
		if products
			products.map do | product |

	      index = index + 1

	      hash = {
	        id: product["id"],
	        name: person["givenName"] + ' ' + person["familyName"],
	        nameSort: person["familyName"],
	        rawHeight: height,
	        height: Person.english_height(height),
	        rawWeight: weight,
	        weight: self.get_weight(weight),
	        position: person['sportsList'].try(:[], 0).try(:[], 'seasons').try(:[],0).try(:[], 'positions').try(:[], 0).try(:[],'abbreviation'),
	        yearSort: self.class_year_to_int(year),
	        year: year,
	        city: person['homeTownAddress'].try(:[],'city').try(:[],'name'),
	        state: person['homeTownAddress'].try(:[],'state').try(:[],'name'),
	        country: person['homeTownAddress'].try(:[],'country').try(:[],'name'),
	        portraitUrl: self.get_image(person) || '/assets/hog_blank_profile_img.jpg',
	        jerseyNumber: person['sportsList'].try(:[], 0).try(:[], 'seasons').try(:[],0).try(:[], 'uniformNumber'),
	        priorSchool: person['previousSchoolName'],
	        yearsWithTeam: self.years_with_team(person['sportsList'].try(:[], 0).try(:[], 'seasons').try(:[],0).try(:[], 'eligibility'))
	      }
	    end
	  end
	end
end
