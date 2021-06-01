import { ROOT_URL } from "../../../config/config";
import { RESULT_PARTENAIRES, DATA_PARTENAIRES } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";
export const getPartners = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/getpartners";
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
        if (parsedRes.status === "fail") {
          dispatch(ResultPartenaires("fail"));
         
        }  else if (parsedRes.status === "success") {

          dispatch(ResultPartenaires("success"));
          dispatch(DataPartenaires(parsedRes.data));
        }
      });
  }; 
};



export const ResultPartenaires = value => {
  return {
    type: RESULT_PARTENAIRES,
    ResultPartenaires: value
  };
};

export const DataPartenaires = value => {
  return {
    type: DATA_PARTENAIRES,
    DataPartenaires: value
  };
};
