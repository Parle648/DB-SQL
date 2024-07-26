<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="200" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/v/@nestjs/core.svg" alt="NPM Version" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/l/@nestjs/core.svg" alt="Package License" /></a>
<a href="https://www.npmjs.com/~nestjscore" target="_blank"><img src="https://img.shields.io/npm/dm/@nestjs/common.svg" alt="NPM Downloads" /></a>
<a href="https://circleci.com/gh/nestjs/nest" target="_blank"><img src="https://img.shields.io/circleci/build/github/nestjs/nest/master" alt="CircleCI" /></a>
<a href="https://coveralls.io/github/nestjs/nest?branch=master" target="_blank"><img src="https://coveralls.io/repos/github/nestjs/nest/badge.svg?branch=master#9" alt="Coverage" /></a>
<a href="https://discord.gg/G7Qnnhy" target="_blank"><img src="https://img.shields.io/badge/discord-online-brightgreen.svg" alt="Discord"/></a>
<a href="https://opencollective.com/nest#backer" target="_blank"><img src="https://opencollective.com/nest/backers/badge.svg" alt="Backers on Open Collective" /></a>
<a href="https://opencollective.com/nest#sponsor" target="_blank"><img src="https://opencollective.com/nest/sponsors/badge.svg" alt="Sponsors on Open Collective" /></a>
  <a href="https://paypal.me/kamilmysliwiec" target="_blank"><img src="https://img.shields.io/badge/Donate-PayPal-ff3f59.svg"/></a>
    <a href="https://opencollective.com/nest#sponsor"  target="_blank"><img src="https://img.shields.io/badge/Support%20us-Open%20Collective-41B883.svg" alt="Support us"></a>
  <a href="https://twitter.com/nestframework" target="_blank"><img src="https://img.shields.io/twitter/follow/nestframework.svg?style=social&label=Follow"></a>
</p>
  <!--[![Backers on Open Collective](https://opencollective.com/nest/backers/badge.svg)](https://opencollective.com/nest#backer)
  [![Sponsors on Open Collective](https://opencollective.com/nest/sponsors/badge.svg)](https://opencollective.com/nest#sponsor)-->

## Description

[Nest](https://github.com/nestjs/nest) framework TypeScript starter repository.

## Installation

```bash
$ npm install
```

## Running the app

```bash
# development
$ npm run start

# watch mode
$ npm run start:dev

# production mode
$ npm run start:prod
```

## Test

```bash
# unit tests
$ npm run test

# e2e tests
$ npm run test:e2e

# test coverage
$ npm run test:cov
```

## Support

Nest is an MIT-licensed open source project. It can grow thanks to the sponsors and support by the amazing backers. If you'd like to join them, please [read more here](https://docs.nestjs.com/support).

## Stay in touch

- Author - [Kamil Myśliwiec](https://kamilmysliwiec.com)
- Website - [https://nestjs.com](https://nestjs.com/)
- Twitter - [@nestframework](https://twitter.com/nestframework)

## License

Nest is [MIT licensed](LICENSE).

```mermaid
erDiagram
    USERS {
        Int id PK "SERIAL NOT NULL"
        String username "VARCHAR(15) NOT NULL UNIQUE"
        String first_name "VARCHAR(15) NOT NULL"
        String last_name "VARCHAR(15) NOT NULL"
        String email "VARCHAR(320) NOT NULL UNIQUE"
        String password "TEXT NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        Int avatar_id "INTEGER NOT NULL UNIQUE"
    }
    FILES {
        Int id PK "SERIAL NOT NULL"
        String file_name "VARCHAR(15) NOT NULL"
        MIME mime_type "MIME NOT NULL"
        String key "TEXT NOT NULL"
        String url "TEXT NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
    }
    MOVIES {
        Int id PK "SERIAL NOT NULL"
        String title "VARCHAR(20) NOT NULL UNIQUE"
        String description "TEXT NOT NULL"
        Int budget "INTEGER NOT NULL"
        DateTime release_date "TIMESTAMP(3) NOT NULL"
        Int duration "INTEGER NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        Int director_id "INTEGER NOT NULL UNIQUE"
        Int genre_id "INTEGER NOT NULL"
    }
    MOVIE_GENRES {
        Int movie_id PK "INTEGER NOT NULL"
        Int genre_id PK "INTEGER NOT NULL"
    }
    GENRES {
        Int id PK "SERIAL NOT NULL"
        String genre "VARCHAR(15) NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
    }
    DIRECTORS {
        Int id PK "SERIAL NOT NULL"
        String name "VARCHAR(15) NOT NULL"
        String surname "VARCHAR(15) NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        Int file_id "INTEGER NOT NULL UNIQUE"
    }
    CHARACTERS {
        Int id PK "SERIAL NOT NULL"
        String name "VARCHAR(15) NOT NULL"
        String description "TEXT NOT NULL"
        Role role "Role NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        Int person_id "INTEGER NOT NULL UNIQUE"
        Int file_id "INTEGER NOT NULL UNIQUE"
    }
    MOVIES_CHARACTERS {
        Int movie_id PK "INTEGER NOT NULL"
        Int character_id PK "INTEGER NOT NULL"
    }
    PERSONS {
        Int id PK "SERIAL NOT NULL"
        String first_name "VARCHAR(15) NOT NULL"
        String last_name "VARCHAR(15) NOT NULL"
        String biography "TEXT NOT NULL"
        DateTime date_of_birth "TIMESTAMP(3) NOT NULL"
        Gender gender "Gender NOT NULL"
        DateTime created_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        DateTime updated_at "TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP"
        Int file_id "INTEGER NOT NULL UNIQUE"
    }

    USERS ||--o{ FILES : "avatar_id"
    FILES ||--o| USERS : "users"
    FILES ||--o| CHARACTERS : "characters"
    FILES ||--o| DIRECTORS : "directors"
    FILES ||--o| PERSONS : "persons"
    MOVIES ||--o| DIRECTORS : "director_id"
    MOVIES ||--o| GENRES : "genre_id"
    MOVIES ||--|{ MOVIES_CHARACTERS : "movies_characters"
    MOVIES ||--|{ MOVIE_GENRES : "movie_genres"
    GENRES ||--|{ MOVIE_GENRES : "movie_genres"
    DIRECTORS ||--o| FILES : "file_id"
    DIRECTORS ||--|{ MOVIES : "movie"
    CHARACTERS ||--o| PERSONS : "person_id"
    CHARACTERS ||--o| FILES : "file_id"
    CHARACTERS ||--|{ MOVIES_CHARACTERS : "movies_characters"
    PERSONS ||--o| FILES : "file_id"
    PERSONS ||--o| CHARACTERS : "character"
```