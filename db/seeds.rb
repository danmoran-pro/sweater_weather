class Seed
  def self.start
    seed = Seed.new
    seed.generate_destinations
  end

  def generate_destinations
    50.times do |i|
      dest = Destination.create!(
        location: Faker::Address.city,
        zip: Faker::Address.zip,
        description: Faker::Lorem.sentence,
        image: Faker::Placeholdit.image
      )
      puts "Destination #{i}: #{dest.location} created!"
    end
  end
end

Seed.start