class CreateSchoolTable < ActiveRecord::Migration
  	def change
	  	create_table :schools do |t|
	  		t.string :name
	  		t.string :url
	  		t.string :description

	  		t.timestamps
  		end
	end
end
