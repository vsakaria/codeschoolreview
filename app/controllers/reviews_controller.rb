class ReviewsController < ApplicationController

	def index
		@school = params[:school_id]
		@reviews = Review.where(:school_id => params[:school_id])
	end

	def new
		@school = School.find(params[:school_id])
		@review = Review.new		
	end

	def create
		@review = Review.create(params[:review])
		@review.school_id = params[:school_id]
		@school = School.find(params[:school_id])
		@review.format_attributes

		if @review.save
			redirect_to school_path(@school)
		else
			redirect_to new_school_review_path
		end
	end

	def show
		
	end
end
