import { ROOT_URL } from "../../../config/config";
import { RESULT_SEND_CONTACT_TYPE } from "../actionTypes";
import { ERROR_SEND_CONTACT_TYPE } from "../actionTypes";
import { DATA_SEND_CONTACT_TYPE } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const contacterNous = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/sendContact";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token:data.token,
        objet: data.object,
        message: data.message
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
          dispatch(Resultsendcontact("fail"));
          dispatch(Errorsendcontact("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(Resultsendcontact("success"));
          dispatch(Datasendcontact(parsedRes.data));
        }
      });
  };
};



export const Resultsendcontact = value => {
  return {
    type: RESULT_SEND_CONTACT_TYPE,
    Resultsendcontact: value
  };
};

export const Errorsendcontact = value => {
    return {
      type: ERROR_SEND_CONTACT_TYPE,
      Errorsendcontact: value
    };
  };
export const Datasendcontact = value => {
  return {
    type: DATA_SEND_CONTACT_TYPE,
    Datasendcontact: value
  };
};
