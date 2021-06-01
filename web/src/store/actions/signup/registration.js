import { ROOT_URL } from "../../../config/config";
import { SIGNUP_REGISTRATION } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const registration = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/register";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        firstname: data.Firstname,
        lastname: data.Lastname,
        telephone: data.Telephone,
        cin: data.Cin,
        birthday: data.Birthday,
        email: data.Email,
        city: data.City,
        address: data.Address,
        idrecoverymode: data.Idrecoverymode,
        idpaiementmode: data.Idpaiementmode,
        idproduits: data.Idproduits,
        typeCard: data.typeCard
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
        if (parsedRes.status === "success") {
          dispatch(registStatus(true));
        } else if (parsedRes.status === "fail") {
          dispatch(registStatus(false));
        }
      });
  };
};

export const registStatus = value => {
  return {
    type: SIGNUP_REGISTRATION,
    registStatus: value
  };
};
