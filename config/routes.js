'use strict';

module.exports = require('lib/wiring/routes')

// create routes

// what to run for `GET /`
.root('root#root')

// standards RESTful routes
.resources('examples')
.resources('users', { only: ['index', 'show'] })
// .resources('surveys', { only: ['index', 'show', 'create', 'update', 'destroy', 'showMy'] })
// users of the app have special requirements
.post('/sign-up', 'users#signup')
.post('/sign-in', 'users#signin')
.delete('/sign-out/:id', 'users#signout')
.patch('/change-password/:id', 'users#changepw')
.post('surveys', 'surveys#create') // create survey AND create answer??
.patch('surveys', 'surveys#update') //updates title
.delete('surveys', 'surveys#destroy') //deletes survey
.resources('surveys')
.get('/my-surveys', 'surveys#showMy')

// .post('surveys', 'surveys#answer')

// all routes created
;
