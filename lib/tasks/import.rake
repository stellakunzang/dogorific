desc 'Seed database with breed data'
task import: :environment do

  puts 'Resetting database...'

  Breeds.destroy_all
  Favorites.destroy_all

  puts 'Database successfully reset!'
  puts 'Importing dog breed data...'

  # iterate over JSON to instantiate Breed objects
  # './data/dogs.json'

  puts 'Breed data successfully imported!'

  ActiveRecord::Base.connection.tables.each do |t|
    ActiveRecord::Base.connection.reset_pk_sequence!(t)
  end

  puts 'Database seeding has successfully completed!'
end
