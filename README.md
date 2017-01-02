[![General Assembly Logo](https://camo.githubusercontent.com/1a91b05b8f4d44b5bbfb83abac2b0996d8e26c92/687474703a2f2f692e696d6775722e636f6d2f6b6538555354712e706e67)](https://generalassemb.ly/education/web-development-immersive)

## LINKS
Deployed Front-End: https://the-three-amigos.github.io/front-end-group/
Deployed Back-End: https://powerful-garden-17029.herokuapp.com/
Front-End Repo: https://github.com/The-Three-Amigos/front-end-group
Back-End Repo: https://github.com/The-Three-Amigos/back-end-group

## DEPENDENCIES

Install with `npm install`.

## APPLICATION DESCRIPTION

This is the client-side of a survey application. It was developed by a group of three students in General Assembly’s Web Development Immersive: Julia Daly, Ryan Roderick, and Joel Buzzanco. The application allows users to create custom surveys, have others answer their surveys, and view respective answers to surveys.

### ROUTES

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| POST   | `/surveys`             | `surveys#create`  |
| PATCH  | `/surveys`             | `surveys#update`  |
| DELETE | `/surveys`             | `surveys#destroy` |
