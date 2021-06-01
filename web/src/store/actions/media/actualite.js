import { ROOT_URL } from "../../../config/config";
import { RESULT_GET_ARTICLES_TYPE, } from "../actionTypes";
import { DATA_GET_ARTICLES_TYPE } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const getarticles = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/getArticles";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token:data.token,
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
        if (parsedRes.status === "fail") {
          dispatch(getArticlesResult("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(getArticlesResult("success"));
          dispatch(DataArticles(parsedRes.data));
        }
      });
  };
};



export const getArticlesResult = value => {
  return {
    type: RESULT_GET_ARTICLES_TYPE,
    getArticlesResult: value
  };
};

export const DataArticles = value => {
  return {
    type: DATA_GET_ARTICLES_TYPE,
    DataArticles: value
  };
};
