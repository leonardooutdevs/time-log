FactoryBot.define do
  factory :time_log do
    duration_hours { rand(9) }
    description { Faker::Lorem.paragraph }
    status { :pending }
  end
end
