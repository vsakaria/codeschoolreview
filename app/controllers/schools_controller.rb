class SchoolsController < ApplicationController

	def index
		@review_count = Review.count
		@schools = School.all
	end

	def new
		@school = School.new
	end

	def creategit
		@school = School.find(params[:id])
		respond_to do |format|
			format.html	
		end
	end

	def show
		@review = Review.new
		@school = School.find(params[:id])

		respond_to do |format|
			format.html
			format.json { render :json => :tweet }		
		end
	end

	def destory
	end
end

#redirect_to goes through the whole process of calling an action 
#render  goes to to the view with a set of instance varible 