
FactoryBot.define do
  factory :destination, class: Destination do
    location {Faker::Address.city}
    zip {Faker::Address.zip_code}
    description {Faker::Lorem.sentence}
    sequence(:image_url) {|n| "http://lorempixel.com/400/300/abstract/#{n}"}
  end
end