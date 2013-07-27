class SchoolsController < ApplicationController

	def index
		@review_count = Review.count
		@schools = School.all
	end

	def new
		@school = School.new
	end

	def create
		@school = School.create(params[:school])
		if @school.save
			redirect_to schools_path
		else
			render :new
		end
	end

	def show
		@review = Review.new
		get_school_by_id params[:id]

		respond_to do |format|
			format.html
			format.json { render :json => :tweet }		
		end
	end

	def destory
	end

	private

	def get_school_by_id id
		@school = School.find(id)
	end
end

#redirect_to goes through the whole process of calling an action 
#render  goes to to the view with a set of instance varible 