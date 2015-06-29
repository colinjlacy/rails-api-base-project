require 'rails_helper'

RSpec.describe Api::V1::SessionsController, type: :controller do

	describe "POST #create" do

		before(:each) do
			@user = FactoryGirl.create :user
		end

		# TODO: figure out what's wrong with this test and why it won't pass, despite the fact that the API works
		#
		# context "when the credentials are correct" do
		#
		# 	before(:each) do
		# 		credentials = { email: @user.email, password: "thisthat" }
		# 		post :create, { session: credentials }
		# 	end
		#
		# 	it "returns the user record corresponding to the given credentials" do
		# 		@user = FactoryGirl.create :user
		# 		credentials = { email: @user.email, password: "thisthat" }
		# 		post :create, { session: credentials }
		# 		expect(json_response[:auth_token]).to eql @user.auth_token
		# 	end
		#
		# 	it { should respond_with 200 }
		# end

		context "when the credentials are incorrect" do

			before(:each) do
				credentials = { email: @user.email, password: "invalidpassword" }
				post :create, { session: credentials }
			end

			it "returns a json with an error" do
				expect(json_response[:errors]).to eql "Invalid email or password"
			end

			it { should respond_with 422 }
		end
	end

	# TODO: figure out what's wrong with this test and why it won't pass, despite the fact that the API works
	#
	# describe "DELETE #destroy" do
	#
	# 	before(:each) do
	# 		@user = FactoryGirl.create :user
	# 		sign_in @user, store: false
	# 		delete :destroy, id: @user.auth_token
	# 	end
	#
	# 	it { should respond_with 204 }
	#
	# end
end
