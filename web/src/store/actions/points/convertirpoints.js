import { ROOT_URL } from "../../../config/config";
import { LIST_CONVERT_POINTS_RESULT_TYPE } from "../actionTypes";
import { DATA_LIST_CONVERT_POINTS_TYPE } from "../actionTypes";

export const convertirpoints = data => {
  return dispatch => {
    let api = "wp-json/caauth/getgifts";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token:  localStorage.getItem('myToken')
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
          dispatch(listconvertpointResult("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(listconvertpointResult("success"));
          dispatch(datalistconvertpointResult(parsedRes.data));
        }
      });
  };
};



export const listconvertpointResult = value => {
  return {
    type: LIST_CONVERT_POINTS_RESULT_TYPE,
    listconvertpointResult: value
  };
};
export const datalistconvertpointResult = value => {
  return {
    type: DATA_LIST_CONVERT_POINTS_TYPE,
    datalistconvertpointResult: value
  };
};
