# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.

## Final Product

### Homepage View
!["Screenshot of homepage view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/homepage_1.png?raw=true)
!["Screenshot of homepage view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/homepage_2.png?raw=true)

### Product Category View
!["Screenshot of product category view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/product_category.png?raw=true)

### Product Details View
!["Screenshot of product details view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/product_details.png?raw=true)

### Cart View
!["Screenshot of cart view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/user_cart.png?raw=true)

### Order View
!["Screenshot of order view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/user_order.png?raw=true)

### User Registration View
!["Screenshot of user registration view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/user_registration.png?raw=true)

### User Login View
!["Screenshot of user login view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/user_login.png?raw=true)

### Admin Dashboard View
!["Screenshot of admin dashboard view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/admin_dashboard.png?raw=true)

### Admin Products View
!["Screenshot of admin products view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/admin_products.png?raw=true)

### Admin Categories View
!["Screenshot of admin categories view"](https://github.com/lindseyogilvie/jungle/blob/master/docs/admin_categories.png?raw=true)


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
