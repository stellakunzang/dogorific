# Dog-O-Rific: Backend API

Dog-O-Rific is a web application where users can view information about different dog breeds and add breeds to their favorites. This application uses a service-oriented architecture, and this repository houses the backend Ruby on Rails API service. The responses are formatted using the [Fast JSON API](https://github.com/Netflix/fast_jsonapi) serializer and are compliant with the [JSON API spec](https://jsonapi.org/). Additionally, all endpoints are RESTful and exposed under an `/api/v1` namespace, for optimal usability.

## API Endpoints & Sample Responses

GET `/api/v1/breeds`

- returns all dog breeds in the database

Example response for this request:
`GET '/api/v1/breeds'`

`{:data=>
  [{:id=>"2",
    :type=>"breed",
    :attributes=>
     {:name=>"Akita",
      :country=>"Japan",
      :description=>
       "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.",
      :images=>
       ["https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
        "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
        "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_Dog.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_Inu_dog.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_hiking_in_Shpella_e_Pellumbasit.jpg",
        "https://images.dog.ceo/breeds/akita/Akita_inu_blanc.jpg",
        "https://images.dog.ceo/breeds/akita/An_Akita_Inu_resting.jpg",
        "https://images.dog.ceo/breeds/akita/Japaneseakita.jpg"]}},
   {:id=>"3",
    :type=>"breed",
    :attributes=>
     {:name=>"Appenzeller",
      :country=>"Switzerland",
      :description=>
       "The Appenzeller Sennenhund is a medium-size breed of dog, one of the four regional breeds of Sennenhund-type dogs from the Swiss Alps. The name Sennenhund refers to people called Senn, herders in the Appenzell region of Switzerland.",
      :images=>`

---

GET `/api/v1/breeds/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request:
`GET '/api/v1/breeds/2'`

`{:data=>
  {:id=>"2",
   :type=>"breed",
   :attributes=>
    {:name=>"Akita",
     :country=>"Japan",
     :description=>
      "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.",
     :images=>
      ["https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
       "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
       "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg",
       "https://images.dog.ceo/breeds/akita/Akita_Dog.jpg",
       "https://images.dog.ceo/breeds/akita/Akita_Inu_dog.jpg",
       "https://images.dog.ceo/breeds/akita/Akita_hiking_in_Shpella_e_Pellumbasit.jpg",
       "https://images.dog.ceo/breeds/akita/Akita_inu_blanc.jpg",
       "https://images.dog.ceo/breeds/akita/An_Akita_Inu_resting.jpg",
       "https://images.dog.ceo/breeds/akita/Japaneseakita.jpg"]}}}`

---

GET  `/api/v1/favorites`

- returns all favorites in the database

Example response for this request:
`GET '/api/v1/favorites'`

`{:data=>
  [{:id=>"1",
    :type=>"favorite",
    :attributes=>
     {:breed=>
       {:id=>2,
        :name=>"Akita",
        :country=>"Japan",
        :description=>
         "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.",
        :images=>
         ["https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
          "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
          "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg"],
        :created_at=>"2020-09-02T04:41:08.739Z",
        :updated_at=>"2020-09-02T04:41:08.739Z"}}},
   {:id=>"2",
    :type=>"favorite",
    :attributes=>
     {:breed=>
       {:id=>5,
        :name=>"Boxer",
        :country=>"Germany",
        :description=>
         "The Boxer is a medium to large, short-haired breed of dog, developed in Germany. The coat is smooth and tight-fitting; colors are fawn, brindled, or white, with or without white markings. Boxers are brachycephalic (they have broad, short skulls), have a square muzzle, mandibular prognathism (an underbite), very strong jaws, and a powerful bite ideal for hanging on to large prey. The Boxer was bred from the Old English Bulldog and the now extinct Bullenbeisser which became extinct by crossbreeding rather than by a decadence of the breed. The Boxer is part of the Molosser group. This group is a category of solidly built, large dog breeds that all descend from the same common ancestor, the large shepherd dog known as a Molossus. The Boxer is a member of the Working Group.",
        :images=>
         ["https://images.dog.ceo/breeds/boxer/IMG_0002.jpg",
          "https://images.dog.ceo/breeds/boxer/IMG_3394.jpg",
          "https://images.dog.ceo/breeds/boxer/n02108089_1.jpg"],
        :created_at=>"2020-09-02T04:41:08.743Z",
        :updated_at=>"2020-09-02T04:41:08.743Z"}}}]}`

---

GET `/api/v1/favorites/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request:
`GET '/api/v1/favorites/1'`

`{:data=>
  {:id=>"1",
   :type=>"favorite",
   :attributes=>
    {:breed=>
      {:id=>2,
       :name=>"Akita",
       :country=>"Japan",
       :description=>
        "The Akita (秋田犬, Akita-inu, Japanese pronunciation: [akʲita.inɯ]) is a large breed of dog originating from the mountainous regions of northern Japan. There are two separate varieties of Akita: a Japanese strain, commonly called Akita Inu (inu means dog in Japanese) or Japanese Akita, and an American strain, known as the Akita or American Akita. The Japanese strain comes in a narrow palette of colors, with all other colors considered atypical of the breed, while the American strain comes in all dog colors. The Akita has a short double-coat similar to that of many other northern spitz breeds such as the German Shepherd or Siberian Husky, but long-coated dogs can also be found in many litters due to a recessive gene.",
       :images=>
        ["https://images.dog.ceo/breeds/akita/512px-Ainu-Dog.jpg",
         "https://images.dog.ceo/breeds/akita/512px-Akita_inu.jpeg",
         "https://images.dog.ceo/breeds/akita/Akina_Inu_in_Riga_1.jpg"],
       :created_at=>"2020-09-02T04:44:38.809Z",
       :updated_at=>"2020-09-02T04:44:38.809Z"}}}}`

---

POST `/api/v1/favorites/add`

- adds a new favorite by passing the primary key ID of the breed in the body of the request

Example response for this request:
`POST '/api/v1/favorites/add'
"Content-Type": "application/json"
"breed": "1"`

`{:data=>{:id=>nil, :attributes=>{:message=>"The breed was successfully added to the favorites list."}}}`

---

DELETE `/api/v1/favorites/{id}`

- deletes favorited breed with corresponding primary key ID (*not the breed ID*)

Example response for this request: `DELETE '/api/v1/favorites/1'`

`{:data=>{:id=>nil, :attributes=>{:message=>"The favorite was successfully deleted, and will now longer appear on the favorites list."}}}`

## Schema

![Schema](/public/schema.png)

## Test Coverage

This application uses RSpec for testing, along with Shoulda-Matchers and SimpleCov gems.

Test coverage is currently at 100%

![SimpleCov](/public/test_coverage.png)

## Future Iterations 

If there were more time to continue working, I would ask follow-up questions about the desired response for the `DELETE` and `POST` requests, write sad-path tests, and add kind error messages for failed requests. 

I was not able to hook the backend application up to the frontend provided, and I would love to see that in action. I am new to yarn/npm and docker, and couldn't quite figure out how to get everyone to play nicely. 
