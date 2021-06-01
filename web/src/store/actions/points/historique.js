import { ROOT_URL } from "../../../config/config";
import { HISTORIQUERESULT_TYPE } from "../actionTypes";
import { DATA_HISTORIQUERESULT_TYPE } from "../actionTypes";

export const historiquepoints = data => {
  return dispatch => {
    let api = "wp-json/caauth/getHistory";
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
      })
      .then(res => res.json())
      .then(parsedRes => {
        if (parsedRes.status === "fail") {
          dispatch(historicResult("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(historicResult("success"));
          dispatch(datahistoric(parsedRes.data));
        }
      });
  };
};



export const historicResult = value => {
  return {
    type: HISTORIQUERESULT_TYPE,
    historicResult: value
  };
};
export const datahistoric = value => {
  return {
    type: DATA_HISTORIQUERESULT_TYPE,
    datahistoric: value
  };
};
