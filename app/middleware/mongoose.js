'use strict';

const mongoose = require('mongoose');
const uri = process.env.MONGOLAB_GOLD_URI || 'mongodb://localhost/back-end-group';
mongoose.Promise = global.Promise;
mongoose.connect(uri);

module.exports = mongoose;
