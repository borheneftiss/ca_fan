import { ROOT_URL } from "../../../config/config"
import { SINUP_GET_MODES_PAYEMENT } from "../actionTypes"
import { SINUP_GET_MODES_COVERY } from "../actionTypes"

export const modespaiementget = () => {
return dispatch => {
    let api = "wp-json/caauth/getmodes";
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
        if (parsedRes.data[0] !== "") {
          dispatch(testcovery(parsedRes.data[1]))
          dispatch(paiementmodes(parsedRes.data[0]));  
          
        }          
    });
  };
};



export const paiementmodes = value => {
  return {
    type: SINUP_GET_MODES_PAYEMENT,
    paiementmodes: value,
  };
};


export const testcovery = value => {
  return {
    type: SINUP_GET_MODES_COVERY,
    testcovery: value,
  };
};

