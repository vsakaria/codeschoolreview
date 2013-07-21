require 'spec_helper'

describe School do
	describe " - can create a school object" do
		context " - with all fields valid" do
			before do
				@school = School.new({:name=>"Code School", :url=>"www.codeschool.com", :description => "Learn by Doing"})
			end

			it " - School should be instantiated" do
				expect(@school).to be_instance_of(School)
			end

			it "- School should hold a name" do
				expect(@school.description).to eq("Learn by Doing")
			end

			it "- School should hold a URL" do
				expect(@school.url).to eq("www.codeschool.com")
			end

			it "- School should hold a slogan" do
				expect(@school.description).to eq("Learn by Doing")
			end
		end

		context " - with a field invalid" do
			before do
				@school = School.new({:name => "", :url=>"www.codeschool.com", :description => "Learn by Doing"})
			end

			it " - School should not be saved" do
				expect(@school.save).to be_false
			end
		end

		context " - with the url invalid" do
			before do
				@school = School.new({:name => "CodeSchool", :url=>"www.codeschoolschool
					", :description => "Learn by Doing"})
			end

			it " - School should not be saved" do
				expect(@school.save).to be_false
			end
		end
	end

	describe "it formats the input strings" do
		before do
			@school = School.new({:name=>"code school", :url=>"www.codeschool.com", :description => "learn by doing"})
			@school.format_attributes
		end


		it "should titleize the name" do
			expect(@school.name).to eq("Code School")
		end

		it "should capitalize the description" do
			expect(@school.description).to eq("Learn by doing")
		end
	end
end

