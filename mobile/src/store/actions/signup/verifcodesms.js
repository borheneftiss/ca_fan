import { ROOT_URL } from "../../../../config";
import { SIGNUP_VERIF_CODESMS } from "../actionTypes";

export const tryVerifcodesms = (number, code) => {
  return dispatch => {
    let api = "/wp-json/caauth/verifcode";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone: number,
        code: code
      }),
      headers: {
        "Content-Type": "application/json"
      }
    })
      .catch(err => {
        console.log(err);
        dispatch(isCodesms(false, "err"));
      })
      .then(res => res.json())
      .then(parsedRes => {
        console.log(parsedRes);
        if (parsedRes.status === "success") {
          dispatch(isCodesms(true, ""));
        } else if (parsedRes.status === "fail") {
          dispatch(isCodesms(false, "err"));
        }
      });
  };
};

export const isCodesms = (value, err) => {
  return {
    type: SIGNUP_VERIF_CODESMS,
    isCodesms: value,
    errmessagecode: err
  };
};
