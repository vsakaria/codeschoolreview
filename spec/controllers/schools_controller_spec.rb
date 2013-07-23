require 'spec_helper'

describe SchoolsController do

	describe "GET #index" do
		before do 
			@schools = School.all
		end

		it "populates an array of schools" do
			expect(School.all).to eq(@schools)
		end

		it "renders the :index view" do 
			get :index 
			response.should render_template :index 
		end
	end

	describe "should save a new School" do

		before do
			@school = School.new({:name=>"Code School", :url=>"www.codeschool.com", :description => "Learn by Doing"})
		end

		it "should save a School and update the DB" do 
			expect(post :create, @school).to change(School.count).by(1)
		end

	end


end
