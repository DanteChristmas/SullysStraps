class TestimonialsController < ApplicationController
	def index
		@testimonials = Testimonial.all
		respond_to do |format|
			format.json { render :json => @testimonials }
		end
	end

	def show
		respond_to do |format|
			format.json { render :json => @testimonials }
		end
	end
	
	def create
		@testimonial = Testimonial.new(testimonial_params)
		@testimonial.save()
		
		respond_to do |format|
			format.json { render :json => @testimonial }
		end
	end
	
	private 
		def testimonial_params
			params.require(:testimonial).permit(:body, :submitter)
		end
end