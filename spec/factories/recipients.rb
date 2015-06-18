FactoryGirl.define do
  factory :recipient do
    message
		user
		read false
  end
end
