class Review < ActiveRecord::Base
	
	attr_accessible :title, :body, :rating

	belongs_to :school

end
