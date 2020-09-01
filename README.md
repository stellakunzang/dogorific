# Dog-O-Rific: Backend API

Dog-O-Rific is a web application where users can view information about different dog breeds and add breeds to their favorites. This application uses a service-oriented architecture, and this repository houses the backend Ruby on Rails API service. The responses are formatted using the [Fast JSON API](https://github.com/Netflix/fast_jsonapi) serializer and are compliant with the [JSON API spec](https://jsonapi.org/). Additionally, all endpoints are RESTful and exposed under an `/api/v1` namespace, for optimal usability. 

## API Endpoints & Sample Responses 

GET `/api/v1/breeds`

- returns all dog breeds in the database 

Example response for this request: `GET '/api/v1/breeds'`

`POSTMAN data here`

---

GET `/api/v1/breeds/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request: `GET '/api/v1/breeds/1'`

`POSTMAN response here` 

---

GET  `/api/v1/favorites`

- returns all favorites in the database 

Example response for this request: `GET '/api/v1/favorites'`

`POSTMAN response here`

---

GET `/api/v1/favorites/{id}`

- returns specific breed when provided with a valid corresponding primary key ID

Example response for this request: `GET '/api/v1/favorites/1'`

`POSTMAN response here` 

---



## Schema 




## Test Coverage 

This application uses RSpec for testing, along with Capybara, Pry, Shoulda-Matchers, and SimpleCov gems. 

Test coverage is currently at 100% 

![SimpleCov](#image link here) 
