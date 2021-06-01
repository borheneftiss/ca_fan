import { ROOT_URL } from "../../../config/config";
import { AUTHENTIF_TYPE } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";
import { DATA_AUTHENTIF_TYPE } from "../actionTypes";
import { DATA_PROFILE_TYPE } from "../actionTypes";
import history from "../../../history";

import * as jwtDecode from 'jwt-decode';

export const authentification = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/authentification";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone:data.Telephone,
        numero:data.Numero,
        token:data.token
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
          dispatch(isAuthentif("fail"));
        } else if (parsedRes.status === "notexist") {
          dispatch(isAuthentif("notexist"));
        } else if (parsedRes.status === "exist" && data.token==="" ) {
          dispatch(isAuthentif("exist"));
          dispatch(datauser(parsedRes.data));
          localStorage.setItem('myToken', parsedRes.data.token);
          var tokendateexpir = jwtDecode(parsedRes.data.token)
          localStorage.setItem('tokendateexpir',tokendateexpir.exp);
          history.push("/challenges");
        }

        else if (parsedRes.status === "exist" && data.token!=="" ) {
          dispatch(isAuthentif("exist"));
          dispatch(datauserprofile(parsedRes.data));
        }

      });
  };
};



export const isAuthentif = value => {
  return {
    type: AUTHENTIF_TYPE,
    isAuthentif: value
  };
};
export const datauser = value => {
  return {
    type: DATA_AUTHENTIF_TYPE,
    datauser: value
  };
};

export const datauserprofile = value => {
  return {
    type: DATA_PROFILE_TYPE,
    datauserprofile: value
  };
};
