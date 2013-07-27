class Review < ActiveRecord::Base
	
	attr_accessible :title, :body, :rating

	validates :title, :body, :rating, :presence => true

	belongs_to :school

	def format_attributes
		self.title = self.title.capitalize
		self.body = self.body.titleize
	end

end
