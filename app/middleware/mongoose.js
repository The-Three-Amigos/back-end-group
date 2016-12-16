'use strict';

const mongoose = require('mongoose');
const uri = process.env.MONGODB_URI || 'mongodb://jcbuzzanco:465846e@ds133348.mlab.com:33348/the-three-amigos';
mongoose.Promise = global.Promise;
mongoose.connect(uri);

module.exports = mongoose;
