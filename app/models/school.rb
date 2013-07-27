class School < ActiveRecord::Base

	
	URL_VALIDATOR = /^(http|https):\/\/|[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,6}(:[0-9]{1,5})?(\/.*)?$/ix

	attr_accessible :name, :url, :description

	validates :name, :url, :description, :presence => true

	validates_format_of :url, :with => URL_VALIDATOR

	has_many :reviews
	
	def format_attributes
		self.description = self.description.capitalize
		self.name = self.name.titleize
	end
end
