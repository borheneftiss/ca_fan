import { ROOT_URL } from "../../../config/config";
import { QUIZ_LIST, QUIZ_NOTFOUND } from "../actionTypes";
import history from "../../../history";
import { uiStartLoading, uiStopLoading } from "../index";
export const getQuizList  = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/quiz/view";
  
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token: localStorage.getItem('myToken')
       
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
        if(parsedRes.error === "log_in")
        {
          history.push("/authentification");
        }
        else if (parsedRes.error === "quiz_non_trouves"){
          dispatch(quiz_notfound("quiz_non_trouves")); 

        }
        else {
        dispatch(quiz_notfound("")); 
        dispatch(list_quiz(parsedRes.data)); 
        }
     
      });
  };
};

export const list_quiz = list_quiz => {
  return {
    type: QUIZ_LIST,
    list_quiz: list_quiz
  };
};
export const quiz_notfound = quiz_notfound => {
  return {
    type: QUIZ_NOTFOUND,
    quiz_notfound: quiz_notfound
  };
};


