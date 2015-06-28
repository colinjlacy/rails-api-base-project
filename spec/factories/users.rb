FactoryGirl.define do
	factory :user do
		email {FFaker::Internet.email}
		password "thisthat"
		password_confirmation "thisthat"
	end
end