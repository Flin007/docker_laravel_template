docker compose run artisan key:generate
exec -T php chmod -R 777 /var/www/laravel/storage
docker compose run artisan migrate