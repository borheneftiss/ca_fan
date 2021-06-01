import { ROOT_URL } from "../../../config/config";
import { QUIZ_QUESTIONS , IS_PLAYED, NB_QUESTIONS, QUESTIONS_IDS, SCORE} from "../actionTypes";
import history from "../../../history";
import { uiStartLoading, uiStopLoading } from "../index";


export const getQuizQuestions  = data => {
  
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/quiz/info";
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
        if(parsedRes.error === "log_in")
        {
          history.push("/authentification");
        }
        else if (parsedRes.error === "quiz_deja_enregistre") {
          dispatch(isPlayed("true")); 
         
        } 
        else if(parsedRes.error === "parametre_quizid_non_valide"){
          history.push("/quiz");
        }
        else {
          dispatch(isPlayed("false")); 
          dispatch(list_questions(parsedRes.data.quiz));  
          var nb = list_questions(parsedRes.data.quiz).list_questions.length ;
          dispatch(nbrQuestions(nb)); 
          dispatch(score(parsedRes.data.quizscore)); 
         
      
        let questionIds= []
        for(let i=0; i < nb ; i++){
          questionIds[i]= list_questions(parsedRes.data.quiz).list_questions[i].questionid
        }
   
        let question_json = JSON.stringify(questionIds)
        dispatch(QuestionsIds(question_json)); 
        }
    
      });
  };
};

export const list_questions = list_questions => {
  return {
    type: QUIZ_QUESTIONS,
    list_questions: list_questions
  };
};
export const isPlayed = isPlayed => {
  return {
    type: IS_PLAYED,
    isPlayed: isPlayed
  };
};
export const nbrQuestions = nbrQuestions => {
  return {
    type: NB_QUESTIONS,
    nbrQuestions: nbrQuestions
  };
};
export const QuestionsIds = QuestionsIds => {
  return {
    type: QUESTIONS_IDS,
    QuestionsIds: QuestionsIds
  };
};
export const score = score => {
  return {
    type: SCORE,
    score: score
  };
};



