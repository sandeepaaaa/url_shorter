# url_shorter

## Travel_port_url_shorte

"Travel_Port_URL_Shortener" website allows users to create shortened versions of long URLs, making them more convenient for sharing. Users can also track the number of visits to their shortened links through a user-friendly dashboard after logging in. The website uses Bootstrap for styling and includes custom error messages to enhance the user experience.

## How to use travel_port_url_shorte website

## 1 Database Name ("url_shortner"):

Your Laravel application uses a MySQL database named "url_shortner" to store information about shortened URLs.
## 2 Migration ("2023_10_13_040640_create_short_urls_table.php"):

You've created a migration file to define the structure of the "short_urls" table in the database. This migration file specifies the schema for the table, including its columns and data types.

## 3 Database Configuration with XAMPP:

To use this database with XAMPP, you must set up the database in your XAMPP environment. Ensure that your database in XAMPP has the same name as the one specified in your Laravel application ("url_shortner"). Also, configure the database connection details, including the database name, username, and password in your Laravel's .env file.

## 4 Controllers ("ShortUrlController" and "ShortUserController"):

You've created two controllers in your Laravel application.
"ShortUrlController" handles URL shortening and management of shortened URLs. Users can input long URLs, and this controller generates short URLs and provides functionality to manage and display them.
"ShortUserController" presumably manages user-related actions and interactions within your application.
## 5 Creating Controllers:

Laravel provides Artisan commands to create controllers. You can use commands like php artisan make:controller ShortUrlController to generate a controller file.

## 6 Models ("ShortUrl"):

Models in Laravel represent database tables and provide an abstraction to interact with the database. Your "ShortUrl" model allows you to work with the "short_urls" table in the database.

## 7 Running the Application ("php artisan serve"):

To run your Laravel application locally during development, you use the php artisan serve command. This command starts a development server, allowing you to access and test your application in a web browser.
Overall, your Laravel application primarily focuses on URL shortening, user management, and database interactions. Users can shorten long URLs, and these shortened URLs are stored in the "url_shortner" database. Controllers and models help manage these interactions, and the application is run locally for testing and development using php artisan serve.
