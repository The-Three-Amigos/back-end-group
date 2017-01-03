'use strict';

const controller = require('lib/wiring/controller');
const models = require('app/models');
const Survey = models.survey;

const authenticate = require('./concerns/authenticate');

// const HttpError = require('lib/wiring/http-error');
//
// const makeErrorHandler = (res, next) =>
//   error =>
//     error && error.name && error.name === 'ValidationError' ?
//       res.status(400).json({ error }) :
//     next(error);


const index = (req, res, next) => {
  let search = {};
  if(req.params.user === 'current') {
    search._owner = req.currentUser._id;
  }
  Survey.find(search)
    .then(surveys => res.json({ surveys }))
    .catch(err => next(err));
};

const show = (req, res, next) => {
  Survey.findById(req.params.id)
    .then(survey => survey ? res.json({ survey }) : next())
    .catch(err => next(err));
};

const showMy = (req, res, next) => {
  let search = {  _owner: req.currentUser._id };
  Survey.find(search)
    .then(survey => survey ? res.json({ survey }) : next())
    .catch(err => next(err));
};

const create = (req, res, next) => {
  let survey = Object.assign(req.body.survey, {
   title: req.body.survey.title, question: req.body.survey.question, answers: req.body.survey.answers,
   _owner: req.currentUser._id
  });
console.log(survey);
  Survey.create(survey)
    .then(survey => res.json({ survey }))
    .catch(err => next(err));
};



// const update = (req, res, next) => {
//   // debug('Changing survey');
//   Survey.findOne({
//     _id: req.params.id,
//   }).then(survey =>
//     survey ? survey.compareSurvey(req.body) :
//       Promise.reject(new HttpError(404))
//   ).then(survey => {
//     survey.title = req.body;
//     return survey.save();
//   }).then((/* survey */) =>
//     res.sendStatus(200)
//   ).catch(makeErrorHandler(res, next));
// };

const update = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Survey.findOne(search)
    .then(survey => {
      if (!survey) {
        return next();
      }
      delete req.body._owner;
      if (req.body.survey.answers) {
        console.log('inside if', req.body.survey.answers);
        survey.answers.push(req.body.survey.answers);
        return survey.save()
        // for updating an answer
        // return survey.update(
        //   {'$push': 'my new answer'}
        //   // {'$push': {req.body.survey.answers}}
        // )
        .then(() => res.sendStatus(201));
      }
      else {
        // for updating title
        // guard for answers key
        return survey.update(req.body.survey)
          .then(() => res.sendStatus(200));
      }
    })
    .catch(err => next(err));
};

const destroy = (req, res, next) => {
  let search = { _id: req.params.id, _owner: req.currentUser._id };
  Survey.findOne(search)
    .then(survey => {
      // if the example is falsey
      // if the search parameters didn't match any examples
      if (!survey) {
        // call the next function
        return next();
      }
      // removes the example from the database (destroys it)
      return survey.remove()
      .then(() => res.sendStatus(200));
  })
  .catch(err => next(err));

};


module.exports = controller({
  index,
  show,
  create,
  update,
  destroy,
  showMy,
}, { before: [
  { method: authenticate, except: ['index', 'show'] },
], });
