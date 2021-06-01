import { ROOT_URL } from "../../../../config";
import { SIGNUP_MODES_PAYMENT } from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const getmodesPaymentmethods = () => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "/wp-json/caauth/getmodes";
    fetch(ROOT_URL + api, {
      method: "POST"
    })
      .catch(err => {
        console.log(err);
        dispatch(uiStopLoading());
      })
      .then(res => res.json())
      .then(parsedRes => {
        console.log(parsedRes);
        if (parsedRes.status === "success") {
          dispatch(
            paymentmethods(parsedRes.data[0].data, parsedRes.data[1].data)
          );
        }
        dispatch(uiStopLoading());
      });
  };
};

export const paymentmethods = (online, cod) => {
  return {
    type: SIGNUP_MODES_PAYMENT,
    paymentonline: online,
    paymentcod: cod
  };
};
