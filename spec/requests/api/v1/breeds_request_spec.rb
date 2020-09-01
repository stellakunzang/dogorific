require 'rails_helper'

describe 'Breeds API' do
  before(:each) do
    @akita = Breed.create(name: "Akita", country: "Japan", description: "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.", images: [
        "https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
        "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
        "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_Dog.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_Inu_dog.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_hiking_in_Shpella_e_Pellumbasit.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_inu_blanc.jpg",
        "https://images.dog.ceo/breeds/akita/An_Akita_Inu_resting.jpg",
        "https://images.dog.ceo/breeds/akita/Japaneseakita.jpg"
      ])
    @appenzeller = Breed.create(name: "Appenzeller", country: "Switzerland", description: "The Appenzeller Sennenhund is a medium-size breed of dog, one of the four regional breeds of Sennenhund-type dogs from the Swiss Alps. The name Sennenhund refers to people called Senn, herders in the Appenzell region of Switzerland.",
    images: [
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1030.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1176.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1195.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1235.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1344.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1426.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1575.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1777.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1783.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_180.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1811.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1855.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_1974.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_2085.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_2090.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_2092.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_2134.jpg",
      "https://images.dog.ceo/breeds/appenzeller/n02107908_2151.jpg"
      ])
    @beagle = Breed.create(name: "Beagle", country: "England", description: "The beagle is a breed of small hound that is similar in appearance to the much larger foxhound. The beagle is a scent hound, developed primarily for hunting hare (beagling). Possessing a great sense of smell and superior tracking instincts, the beagle is the primary breed used as detection dogs for prohibited agricultural imports and foodstuffs in quarantine around the world. The beagle is intelligent. It is a popular pet due to its size, good temper, and a lack of inherited health problems.", images:[
      "https://images.dog.ceo/breeds/beagle/Joey.jpg",
      "https://images.dog.ceo/breeds/beagle/Phoebe.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10108.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10206.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10296.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10354.jpg",
      "https://images.dog.ceo/breeds/beagle/n02088364_10362.jpg"
      ])
    @boxer = Breed.create(name: "Boxer", country: "Germany", description: "The Boxer is a medium to large, short-haired breed of dog, developed in Germany. The coat is smooth and tight-fitting; colors are fawn, brindled, or white, with or without white markings. Boxers are brachycephalic (they have broad, short skulls), have a square muzzle, mandibular prognathism (an underbite), very strong jaws, and a powerful bite ideal for hanging on to large prey. The Boxer was bred from the Old English Bulldog and the now extinct Bullenbeisser which became extinct by crossbreeding rather than by a decadence of the breed. The Boxer is part of the Molosser group. This group is a category of solidly built, large dog breeds that all descend from the same common ancestor, the large shepherd dog known as a Molossus. The Boxer is a member of the Working Group.", images: [
      "https://images.dog.ceo/breeds/boxer/IMG_0002.jpg",
      "https://images.dog.ceo/breeds/boxer/IMG_3394.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1003.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_10229.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1031.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1072.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_10774.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_10901.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_10939.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11001.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11032.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1104.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11074.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11122.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11154.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_1159.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11616.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11687.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_117.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11807.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_11875.jpg",
      "https://images.dog.ceo/breeds/boxer/n02108089_122.jpg"
      ])
  end

  it 'sends a list of all breeds' do
    get '/api/v1/breeds'

    json = JSON.parse(response.body, symbolize_names: true)

    expect(json[:data].length).to eq(4)

    json[:data].each do |breed|
      expect(breed[:type]).to eq('breed')
      expect(breed[:attributes]).to have_key(:name)
      expect(breed[:attributes]).to have_key(:country)
      expect(breed[:attributes]).to have_key(:description)
      expect(breed[:attributes]).to have_key(:images)
    end
  end
end
