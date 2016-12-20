'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Survey = models.survey;

const index = (req, res, next) => {
  Survey.find()
    .then(surveys => res.json({ surveys }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Survey.findById(req.params.id)
    .then(survey => survey ? res.json({ survey }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let survey = Object.assign(req.body.survey, {
    title: req.body.survey.title, question: req.body.survey.question, answers: req.body.survey.answers
  });
  Survey.create(survey)
    .then(survey => res.json({ survey }))
    .catch(err => next(err));
};

module.exports = controller({
  index,
  show,
  create

});
