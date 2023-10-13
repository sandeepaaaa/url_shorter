<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://github.com/laravel/framework/actions"><img src="https://github.com/laravel/framework/workflows/tests/badge.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

## About Laravel

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable and creative experience to be truly fulfilling. Laravel takes the pain out of development by easing common tasks used in many web projects, such as:

- [Simple, fast routing engine](https://laravel.com/docs/routing).
- [Powerful dependency injection container](https://laravel.com/docs/container).
- Multiple back-ends for [session](https://laravel.com/docs/session) and [cache](https://laravel.com/docs/cache) storage.
- Expressive, intuitive [database ORM](https://laravel.com/docs/eloquent).
- Database agnostic [schema migrations](https://laravel.com/docs/migrations).
- [Robust background job processing](https://laravel.com/docs/queues).
- [Real-time event broadcasting](https://laravel.com/docs/broadcasting).

Laravel is accessible, powerful, and provides tools required for large, robust applications.

## Learning Laravel

Laravel has the most extensive and thorough [documentation](https://laravel.com/docs) and video tutorial library of all modern web application frameworks, making it a breeze to get started with the framework.

You may also try the [Laravel Bootcamp](https://bootcamp.laravel.com), where you will be guided through building a modern Laravel application from scratch.

If you don't feel like reading, [Laracasts](https://laracasts.com) can help. Laracasts contains over 2000 video tutorials on a range of topics including Laravel, modern PHP, unit testing, and JavaScript. Boost your skills by digging into our comprehensive video library.

## Laravel Sponsors

We would like to extend our thanks to the following sponsors for funding Laravel development. If you are interested in becoming a sponsor, please visit the Laravel [Patreon page](https://patreon.com/taylorotwell).

### Premium Partners

- **[Vehikl](https://vehikl.com/)**
- **[Tighten Co.](https://tighten.co)**
- **[Kirschbaum Development Group](https://kirschbaumdevelopment.com)**
- **[64 Robots](https://64robots.com)**
- **[Cubet Techno Labs](https://cubettech.com)**
- **[Cyber-Duck](https://cyber-duck.co.uk)**
- **[Many](https://www.many.co.uk)**
- **[Webdock, Fast VPS Hosting](https://www.webdock.io/en)**
- **[DevSquad](https://devsquad.com)**
- **[Curotec](https://www.curotec.com/services/technologies/laravel/)**
- **[OP.GG](https://op.gg)**
- **[WebReinvent](https://webreinvent.com/?utm_source=laravel&utm_medium=github&utm_campaign=patreon-sponsors)**
- **[Lendio](https://lendio.com)**

## Contributing

Thank you for considering contributing to the Laravel framework! The contribution guide can be found in the [Laravel documentation](https://laravel.com/docs/contributions).

## Code of Conduct

In order to ensure that the Laravel community is welcoming to all, please review and abide by the [Code of Conduct](https://laravel.com/docs/contributions#code-of-conduct).

## Security Vulnerabilities

If you discover a security vulnerability within Laravel, please send an e-mail to Taylor Otwell via [taylor@laravel.com](mailto:taylor@laravel.com). All security vulnerabilities will be promptly addressed.

## License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).

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

