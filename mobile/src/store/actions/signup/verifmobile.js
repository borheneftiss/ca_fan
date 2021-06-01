import { ROOT_URL } from "../../../../config";
import { SIGNUP_VERIF_MOBILE } from "../actionTypes";

export const tryVerifMobile = number => {
  return dispatch => {
    let api = "/wp-json/caauth/verifmobile";
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
        console.log(parsedRes.status);
        if (parsedRes.status === "success") {
          dispatch(isNumberca(true));
        } else if (parsedRes.status === "fail") {
          dispatch(isNumberca(false));
        }
      });
  };
};

export const isNumberca = value => {
  return {
    type: SIGNUP_VERIF_MOBILE,
    isNumberca: value
  };
};
