'use strict';

const mongoose = require('mongoose');

const surveySchema = new mongoose.Schema({
  title: {
    type: String,
    required: true,
  },
  question: {
    type: String,
    required: true,
  },
  answers: [{
    type: String,
    required: true,
  }],
}, {
  timestamps: true,
});


const Survey = mongoose.model('Survey', surveySchema);

module.exports = Survey;
