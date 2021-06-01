import { createStore, combineReducers, compose, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import { reducer as formReducer } from "redux-form";
import isLoading from "./reducers/ui/ui";
import isLoadingBtn from "./reducers/ui/ui";
import isNumberca from "./reducers/signUp/signUpReducer";
import isEmptyNumberca from "./reducers/signUp/signUpReducer";

import numberexists from "./reducers/signUp/signUpReducer";
import codevalide from "./reducers/signUp/signUpReducer";
import modespaiement from "./reducers/signUp/signUpReducer";
import paiementmodes from "./reducers/signUp/signUpReducer";
import testcovery from "./reducers/signUp/signUpReducer";
import getproducts from "./reducers/signUp/signUpReducer";
import registStatus from "./reducers/signUp/signUpReducer";
import isAuthentif from "./reducers/authentification/authentifReducer";
import datauser from "./reducers/authentification/authentifReducer";
import datauserprofile from "./reducers/authentification/authentifReducer";

import list_quiz from "./reducers/quiz/quizReducer";
import quiz_notfound from "./reducers/quiz/quizReducer";
import quiz_responses from "./reducers/quiz/quizReducer";
import quiz_score from "./reducers/quiz/quizReducer";
import nbreponses from "./reducers/quiz/quizReducer";
import get_points from "./reducers/quiz/quizReducer";
import list_questions from "./reducers/quiz/quizQuestionsReducer";
import score from "./reducers/quiz/quizQuestionsReducer";
import isPlayed from "./reducers/quiz/quizQuestionsReducer";
import nbrQuestions from "./reducers/quiz/quizQuestionsReducer";
import QuestionsIds from "./reducers/quiz/quizQuestionsReducer";
import editStatus from "./reducers/profile/profileReducer";

import gettypechoixcard from "./reducers/signUp/signUpReducer";
import datalisttypechoixcard from "./reducers/signUp/signUpReducer";

//points
import historicResult from "./reducers/points/historiqueReducer";
import datahistoric from "./reducers/points/historiqueReducer";

import donResult from "./reducers/points/donationReducer";
import datadon from "./reducers/points/donationReducer";

import datalistconvertpointResult from "./reducers/points/convertirpointsReducer";
import listconvertpointResult from "./reducers/points/convertirpointsReducer";

import projectResult from "./reducers/points/projectReducer";
import dataproject from "./reducers/points/projectReducer";

import paiementResultDon from "./reducers/points/paiementReducer";
import datapaiementDon from "./reducers/points/paiementReducer";

//contact
import Resultsendcontact from "./reducers/contact/contactReducer";
import Errorsendcontact from "./reducers/contact/contactReducer";
import Datasendcontact from "./reducers/contact/contactReducer";

//media
import DataArticles from "./reducers/media/mediaReducer";
import getArticlesResult from "./reducers/media/mediaReducer";
//partenaires
import ResultPartenaires from "./reducers/partenaires/partenairesReducer";
import DataPartenaires from "./reducers/partenaires/partenairesReducer";


const rootReducer = combineReducers({
  ui: isLoading,
  uiBtn: isLoadingBtn,
  form: formReducer,
  isNumberca: isNumberca,
  isEmptyNumberca:isEmptyNumberca,
  numberexists: numberexists,
  codevalide: codevalide,
  modespaiement: modespaiement, 
  paiementmodes: paiementmodes,
  getproducts: getproducts,
  registStatus: registStatus,
  testcovery: testcovery,
  isAuthentif: isAuthentif,
  datauser:datauser,
  datauserprofile:datauserprofile,
  list_quiz: list_quiz,
  quiz_notfound: quiz_notfound,
  list_questions: list_questions,
  score:score,
  isPlayed:isPlayed,
  nbrQuestions:nbrQuestions,
  QuestionsIds : QuestionsIds,
  get_points:get_points,
  quiz_responses:quiz_responses,
  quiz_score:quiz_score,
  editStatus: editStatus,
  nbreponses:nbreponses,
  historicResult:historicResult,
  datahistoric:datahistoric,
  donResult:donResult,
  datadon:datadon,
  dataproject:dataproject,
  projectResult:projectResult,
  datapaiementDon:datapaiementDon,
  paiementResultDon:paiementResultDon,
  gettypechoixcard:gettypechoixcard,
  datalisttypechoixcard:datalisttypechoixcard,
  Resultsendcontact:Resultsendcontact,
  Errorsendcontact:Errorsendcontact,
  Datasendcontact:Datasendcontact,
  listconvertpointResult:listconvertpointResult,

  datalistconvertpointResult:datalistconvertpointResult,
  getArticlesResult:getArticlesResult,
  DataArticles:DataArticles,
  ResultPartenaires:ResultPartenaires,
  DataPartenaires:DataPartenaires
});

let composeEnhancers = compose;
composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;

const configureStore = () => {
  return createStore(rootReducer, composeEnhancers(applyMiddleware(thunk)));
};

export default configureStore;
