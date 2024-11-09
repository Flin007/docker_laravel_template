<h1><center>Шаблон docker для быстрого старта</center></h1>
<p>Содержит необходимые сервисы для быстрого развёртывания laravel приложения в docker</p>
<h2>Список сервисов:</h2>
<p>Nginx, PHP, MYSQL, phpmyadmin, composer, artisan</p>
<h2>Инструкция:</h2>
<b>Устанавливаем Laravel командой:</b><br>
docker compose run composer create-project laravel/laravel .<br>
<br>
<b>Затем запускаем контейнеры:</b><br>
docker compose up --detach<br>
<br>
<b>Запускаем поочередно команы:</b><br>
docker compose exec -T php chmod -R 777 /var/www/laravel/storage<br>
docker compose run artisan key:generate <br>
docker compose run artisan migrate<br>
<br>
Заходим на <a href="http://localhost:8000/" target="_blank">localhost:8000</a>, и проверяем работоспособность, сайт должен отобразиться там, если вы не меняли конфик докера.<br>
Для работы с composer или artisan используем команду <b>docker compose run composer/artisan</b> соответственно
