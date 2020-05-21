##  Server API

### GET tour by ID
- Get `/tour/:id`

**Path Parameters:

-   `id` params : id

**Success Status Code: `200`

**Returns:** JSON
```json
{
  "id": "Number",
  "name": "String",
  "overview": "String",
  "cancellation_policy": "String",
  "return_details": "String",
  "createdAt": "String",
  "updatedAt": "String",
  "Attractions": [
      {
      "id": "Number",
      "name": "laborum beatae dolor",
      "latitude": "Number",
      "longitude": "Number",
      "description": "String",
      "rating": "Number",
      "attraction_url": "Null",
      "image_path": "String",
      "image_alt": "String",
      "createdAt": "String",
      "updatedAt": "String",
      "ToursAttractions": {
              "createdAt": "String",
              "updatedAt": "String",
              "AttractionId": "Number",
              "TourId": "Number",
              }
    }
  ]
}
```


### GET tour
- Get `/tour/`

**Success Status Code: `200`

**Returns:** JSON
```json
{
  "id": "Number",
  "name": "String",
  "overview": "String",
  "cancellation_policy": "String",
  "return_details": "String",
  "createdAt": "String",
  "updatedAt": "String",
  "Attractions": [
      {
      "id": "Number",
      "name": "laborum beatae dolor",
      "latitude": "Number",
      "longitude": "Number",
      "description": "String",
      "rating": "Number",
      "attraction_url": "Null",
      "image_path": "String",
      "image_alt": "String",
      "createdAt": "String",
      "updatedAt": "String",
      "ToursAttractions": {
              "createdAt": "String",
              "updatedAt": "String",
              "AttractionId": "Number",
              "TourId": "Number",
              }
    }
  ]
}
```

 
###################
###################


### POST tour
- Post `/tour/`

**Success Status Code: `201`

**Returns:** JSON
```json
{
    "id": "Number",
    "name": "String",
    "overview": "String",
    "cancellation_policy": "String",
    "return_details": "String",
},
{
    "tableName": "String,
};
```


### POST attraction
- Post `/attraction/`

**Success Status Code: `201`

**Returns:** JSON
```json
{   
    "id": "Number",
    "name": "String",
    "latitude": "Number",
    "longitude": "Number",
    "description": "String",
    "rating": "Number",
    "attraction_url": "String",
    "image_path": "String",
    "image_alt": "String",
},
{
    "tableName": "String",
}
```


### POST tourAttraction
- Post `/tourAttraction/`

**Success Status Code: `201`

**Returns:** JSON
```json
{
    "id": "Number",
    "stopIndex": "Numbet",
    "duration": "Number",
    "admissionPrice": "Number",
    "admissionNote": "Number",
},
{
    "tableName": "String",
};
```


###################
###################



### Update 
- Path `/tour/:id`

**Path Parameters:

-   `id` params : id

**Success Status Code:** `204`

Request Body: Expects JSON with any of the following keys (include only keys to be updated)

**Returns:** JSON
```json
{
  "Attractions": [
      {
      "ToursAttractions": {
              "TourId": "Number",
              },
      "ToursAttractions": {
              "TourId": "Number",
              },
      "ToursAttractions": {
              "TourId": "Number",
              }
    }
  ]
}
```


###################
###################


### Delete tour
- DELETE `/tour/:id`

**Path Parameters:**

- `id` tour : id

**Success Status Code:** `204`