import { ROOT_URL } from "../../../config/config"
import { SIGNUP_VERIF_MOBILE } from "../actionTypes";
import { SIGNUP_VERIF_USEREXIST } from "../actionTypes";
import { SIGNUP_VERIF_EMPTY } from "../actionTypes";


export const tryVerifMobile = number => {
  return dispatch => {
    let api = "wp-json/caauth/verifmobile";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone: number
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
        if (parsedRes.status === "success") {
          dispatch(isNumberca(true));
          dispatch(numberexists("camobile"));
        } else if (parsedRes.status === "fail" && parsedRes.code === "notcamobile") {
          dispatch(isNumberca(false));
          dispatch(numberexists("notcamobile"));
        } else if (parsedRes.status === "fail" && parsedRes.code === "numberexists"){
          dispatch(isNumberca(true));
          dispatch(numberexists("numberexists"));
        }
        else if (parsedRes.status === "fail" && parsedRes.error === "empty_telephone"){
          dispatch(isEmptyNumberca(true));
          dispatch(isNumberca(false));
        }
      });
  };
};
export const isEmptyNumberca = value => {
  return {
    type: SIGNUP_VERIF_EMPTY,
    isEmptyNumberca: value
  };
};
export const isNumberca = value => {
  return {
    type: SIGNUP_VERIF_MOBILE,
    isNumberca: value
  };
};

export const numberexists = value => {
  return {
    type: SIGNUP_VERIF_USEREXIST,
    numberexists: value
  };
};