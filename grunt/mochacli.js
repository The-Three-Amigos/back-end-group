'use strict';

const testDatabase = 'mongodb://localhost/back-end-group-test';

module.exports = {
  options: {
    env: {
      MONGOLAB_GOLD_URI: testDatabase,
      NODE_PATH: process.env.PWD,
    },
  },
  all: ['<%= paths.src.spec %>'],
};
