import { ROOT_URL } from "../../../config/config";
import { PAIEMENT_RESULT_DON , PAIEMENT_DATA_DON } from "../actionTypes";


export const paiementModesDon = data => {
  return dispatch => {
    let api = "wp-json/caauth/getDonationModes";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token: localStorage.getItem("myToken")
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
          dispatch(paiementResultDon("fail"));
        }  
        else if (parsedRes.status === "success") {
          dispatch(paiementResultDon("success"));
          dispatch(datapaiementDon(parsedRes.data));
          
        }
      });
  };
};

export const paiementResultDon = value => {
  return {
    type: PAIEMENT_RESULT_DON,
    paiementResultDon: value
  };
};
export const datapaiementDon = value => {
  return {
    type: PAIEMENT_DATA_DON,
    datapaiementDon: value
  };
};
