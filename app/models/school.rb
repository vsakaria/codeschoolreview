class School < ActiveRecord::Base

	attr_accessible :name, :url, :description

	has_many :reviews

end
