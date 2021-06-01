import { ROOT_URL } from "../../../config/config";
import { SINUP_VERIF_CODE } from "../actionTypes";

export const verifcode = (number, string) => {
  return dispatch => {
    let api = "wp-json/caauth/verifcode";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone: number,
        code: string
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
        if (parsedRes.error === "mismatched") {
          dispatch(codevalide("mismatched"));
        } else if (parsedRes.error === "invalid") {
          dispatch(codevalide("invalid"));
        } else if (parsedRes.error[0] === "empty_telephone") {
          dispatch(codevalide("empty_telephone"));
        } else {
          if (parsedRes.status === "success") {
            dispatch(codevalide("success"));
          }
        }
      });
  };
};

export const codevalide = value => {
  return {
    type: SINUP_VERIF_CODE,
    codevalide: value
  };
};
