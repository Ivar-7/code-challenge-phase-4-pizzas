# Pizza Restaurant Tracker API

## Project Journey

This document outlines the steps I took to build the Pizza Restaurant Tracker API.

### Step 1: Project Setup

- Created a new Rails project.
- Established a private GitHub repository for version control.
- Added my teaching mentor as a contributor.
- Maintained regular commits to track progress.

### Step 2: Models and Migrations

- Defined model relationships:
  - `Restaurant` has many `Pizza`s through `RestaurantPizza`.
  - `Pizza` has many `Restaurant`s through `RestaurantPizza`.
  - `RestaurantPizza` belongs to a `Restaurant` and a `Pizza`.
- Generated models and migrations.
- Established relationships within model files.
- Ran migrations to create necessary database tables.

### Step 3: Validations

- Implemented validation in the `RestaurantPizza` model:
  - Ensured the `price` field is between 1 and 30.

### Step 4: Routes and JSON Format

- Set up routes for API endpoints with specific JSON formats:
  - `GET /restaurants` - List of restaurants.
  - `GET /restaurants/:id` - Restaurant details with associated pizzas.
  - `DELETE /restaurants/:id` - Deleted restaurant and its data.
  - `GET /pizzas` - List of available pizzas.
  - `POST /restaurant_pizzas` - Created a new `RestaurantPizza`.

### Step 5: Testing and Iteration

- Thoroughly tested the application's functionality.
- Ensured each route returned the expected JSON format.
- Iterated on the code based on testing results.

## ConclusiON

These are all the steps taken to complete the pizza resturant rails API.

