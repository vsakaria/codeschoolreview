require 'spec_helper'

describe School do
	before do
		@school = School.new({:name=>"Code School", :url=>"www.codeschool.com", :description => "Learn by Doing"})
	end

	it "School be instantiated" do
		expect(@school).to be_instance_of(School)
	end

	it "should hold a name" do
		expect(@school.description).to eq("Learn by Doing")
	end

	it "should hold a URL" do
		expect(@school.url).to eq("www.codeschool.com")
	end

	it "should hold a slogan" do
		expect(@school.description).to eq("Learn by Doing")
	end
end

