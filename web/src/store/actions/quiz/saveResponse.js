import { ROOT_URL } from "../../../config/config";
import { QUIZ_POINTS } from "../actionTypes";
import { uiStartLoadingBtn, uiStopLoadingBtn } from "../index";

export const saveResponse  = data => {
  
  return dispatch => {
    dispatch(uiStartLoadingBtn());
    let api = "wp-json/quiz/save";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({

        token:data.token,
        answer:data.answer
       
      }),
      headers: {
        "Content-Type": "application/json"
      }
    })
      .catch(err => { 
        console.log(err);
        dispatch(uiStopLoadingBtn())
      })
      .then(res => res.json())
      .then(parsedRes => {
        dispatch(uiStopLoadingBtn())
      if (parsedRes.status === "success") {
       
        dispatch(get_points(parsedRes.data));        
    
      }
      });
  };
};

export const get_points = get_points => {
  return {
    type: QUIZ_POINTS,
    get_points: get_points
  };
};

