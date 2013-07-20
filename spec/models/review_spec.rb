require 'spec_helper'

describe Review do
 
  before do
  	school = School.new({:name=>"Code School", :url=>"www.codeschool.com", :description => "Learn by Doing"})
  	school.save

  	@review =  school.reviews.create({:title => "All you need", :body => "Great interactive task", :rating => 5})
  end

  it "should hold a title" do
  	expect(@review.title).to eq("All you need")
  end 

  it "should hold a url" do
  	expect(@review.body).to eq("Great interactive task")
  end

  it "should hold a rating" do
  	expect(@review.rating).to eq(5)
  end

end
