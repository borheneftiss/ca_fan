
import { ROOT_URL } from "../../../config/config"
import { SINUP_GET_TYPE_CHOIX_CARD } from "../actionTypes"
import { DATA_SINUP_GET_TYPE_CHOIX_CARD } from "../actionTypes"

export const gettypecard = () => {
  return dispatch => {
    let api = "wp-json/caauth/gettypecard";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
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
              dispatch(gettypechoixcard("fail"));
            }  else if (parsedRes.status === "success") {
              dispatch(gettypechoixcard("success"));
              dispatch(datalisttypechoixcard(parsedRes.data));
            }
      });
  };
};



export const gettypechoixcard = value => {
  return {
    type: SINUP_GET_TYPE_CHOIX_CARD,
    gettypechoixcard: value,
  };
};

export const datalisttypechoixcard = value => {
    return {
      type: DATA_SINUP_GET_TYPE_CHOIX_CARD,
      datalisttypechoixcard: value,
    };
  };