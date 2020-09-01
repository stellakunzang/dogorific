require 'rails_helper'

describe 'Favorites API' do
  before(:each) do
    @akita = Breed.create(name: "Akita", country: "Japan", description: "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.", images: [
        "https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
        "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
        "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg"
      ])

    @beagle = Breed.create(name: "Beagle", country: "England", description: "The beagle is a breed of small hound that is similar in appearance to the much larger foxhound. The beagle is a scent hound, developed primarily for hunting hare (beagling). Possessing a great sense of smell and superior tracking instincts, the beagle is the primary breed used as detection dogs for prohibited agricultural imports and foodstuffs in quarantine around the world. The beagle is intelligent. It is a popular pet due to its size, good temper, and a lack of inherited health problems.", images:[
      "https://images.dog.ceo/breeds/beagle/Joey.jpg",
      "https://images.dog.ceo/breeds/beagle/Phoebe.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10108.jpg"
      ])

    @boxer = Breed.create(name: "Boxer", country: "Germany", description: "The Boxer is a medium to large, short-haired breed of dog, developed in Germany. The coat is smooth and tight-fitting; colors are fawn, brindled, or white, with or without white markings. Boxers are brachycephalic (they have broad, short skulls), have a square muzzle, mandibular prognathism (an underbite), very strong jaws, and a powerful bite ideal for hanging on to large prey. The Boxer was bred from the Old English Bulldog and the now extinct Bullenbeisser which became extinct by crossbreeding rather than by a decadence of the breed. The Boxer is part of the Molosser group. This group is a category of solidly built, large dog breeds that all descend from the same common ancestor, the large shepherd dog known as a Molossus. The Boxer is a member of the Working Group.", images: [
      "https://images.dog.ceo/breeds/boxer/IMG_0002.jpg",
      "https://images.dog.ceo/breeds/boxer/IMG_3394.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1.jpg"
      ])

    @favorite1 = @akita.favorites.create
    @favorite2 = @boxer.favorites.create
  end

  it 'returns a list of all favorites' do
    get '/api/v1/favorites'

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data].length).to eq(2)

    json[:data].each do |favorite|
      expect(favorite[:type]).to eq('favorite')
      expect(favorite[:id].to_i).to be_a(Integer)
    end
  end

  it 'returns single favorite with id' do
    get "/api/v1/favorites/#{@favorite1.id}"

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data][:id]).to eq("#{@favorite1.id}")
    expect(json[:data][:type]).to eq('favorite')
  end

  it 'can add a favorite' do
    new_favorite_body = {
                          "breed": "#{@beagle.id}"
                        }

    post '/api/v1/favorites/add', params: new_favorite_body

    get '/api/v1/favorites'

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data].length).to eq(3)
  end

end
