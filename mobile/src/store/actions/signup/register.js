import { ROOT_URL } from "../../../../config";
import { SIGNUP_REGISTER_RESPONSE } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const tryRegister = data => {
    console.log(data)
  return dispatch => {
      dispatch(uiStartLoading())
    let api = "/wp-json/caauth/sendsms";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        firstname:data.firstname,
        lastname:data.lastname,
        telephone: data.telephone,
        cin:data.cin,
        birthday:data.birthday,
        email:data.email,
        city:data.city,
        address:data.address,
        idrecoverymode:data.idrecoverymode,
        idpaiementmode:data.idpaiementmode,
        idproduits:data.idproduits
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
        dispatch(registerresponse(parsedRes.status))
        console.log(parsedRes.status);
      });
  };
};


export const registerresponse = value => {
    return {
      type: SIGNUP_REGISTER_RESPONSE,
      registerResponse: value,
    };
  };