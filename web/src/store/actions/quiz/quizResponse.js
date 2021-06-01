import { ROOT_URL } from "../../../config/config";
import { QUIZ_RESPONSES, NB_RESPONSE , SCORE_QUIZ } from "../actionTypes";
import history from "../../../history";
import { uiStartLoading, uiStopLoading } from "../index";

export const getQuizResponses  = data => {
  
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/quiz/answer";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token: localStorage.getItem('myToken'),
        quizid:localStorage.getItem('quizID')
       
      }),
      headers: {
        "Content-Type": "application/json"
      }
    })
      .catch(err => {
        console.log(err);
        dispatch(uiStopLoading())
      })
      .then(res => res.json())
      .then(parsedRes => {   
        dispatch(uiStopLoading())
        if(  parsedRes.error === "log_in") {
          history.push("/authentification");
        }
        else if (parsedRes.status === "success") {
          dispatch(quiz_responses(parsedRes.data.quiz)); 
          dispatch(quiz_score(parsedRes.data.quizscore));
          let nbreponse = quiz_responses(parsedRes.data.quiz).quiz_responses.length ; 
          dispatch(nbreponses(nbreponse));  
        } 
      
    
      });
  };
};

export const quiz_responses = quiz_responses => {
  return {
    type: QUIZ_RESPONSES,
    quiz_responses: quiz_responses
  };
};

export const nbreponses = nbreponses => {
  return {
    type: NB_RESPONSE,
    nbreponses: nbreponses
  };
};
export const quiz_score = quiz_score => {
  return {
    type: SCORE_QUIZ,
    quiz_score: quiz_score
  };
};
