# Dog-O-Rific: Backend API

Dog-O-Rific is a web application where users can view information about different dog breeds and add breeds to their favorites. This application uses a service-oriented architecture, and this repository houses the backend Ruby on Rails API service. The responses are formatted using the [Fast JSON API](https://github.com/Netflix/fast_jsonapi) serializer and are compliant with the [JSON API spec](https://jsonapi.org/). Additionally, all endpoints are RESTful and exposed under an `/api/v1` namespace, for optimal usability.

## API Endpoints & Sample Responses

GET `/api/v1/breeds`

- returns all dog breeds in the database

Example response for this request:
`GET '/api/v1/breeds'`

![response](/public/all_breeds.png)

---

GET `/api/v1/breeds/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request:
`GET '/api/v1/breeds/642'`

![response](/public/single_breed.png)

---

GET  `/api/v1/favorites`

- returns all favorites in the database

Example response for this request:
`GET '/api/v1/favorites'`

![response](/public/all_favorites.png)

---

GET `/api/v1/favorites/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request:
`GET '/api/v1/favorites/229'`

![response](/public/single_favorite.png)

---

POST `/api/v1/favorites/add`

- adds a new favorite by passing the primary key ID of the breed in the body of the request

Example response for this request:
`POST '/api/v1/favorites/add'
"Content-Type": "application/json"
"breed": "1"`

![response](/public/add_favorite.png)

---

DELETE `/api/v1/favorites/{id}`

- deletes favorited breed with corresponding primary key ID (*not the breed ID*)

Example response for this request: `DELETE '/api/v1/favorites/1'`

![response](/public/delete_favorite.png)

## Schema

![Schema](/public/schema.png)

## Test Coverage

This application uses RSpec for testing, along with Shoulda-Matchers and SimpleCov gems.

Test coverage is currently at 100%

![SimpleCov](/public/test_coverage.png)

## Future Iterations

If there were more time to continue working, I would ask follow-up questions about the desired response for the `DELETE` and `POST` requests, write sad-path tests, and add kind error messages for failed requests.

I was not able to hook the backend application up to the frontend provided, and I would love to see that in action. I am new to yarn/npm and docker, and couldn't quite figure out how to get everyone to play nicely. 

An extension of this is that I did not hook up the backend application to Postman as intended to confirm expected behavior and capture responses for the README. In the future I would want the data in the sample responses to come from the actual API and not from the test data.
