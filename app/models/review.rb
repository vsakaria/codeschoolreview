class Review < ActiveRecord::Base
	
	attr_accessible :title, :body, :rating

	validates :title, :body, :rating, :presence => true

	belongs_to :school

end
