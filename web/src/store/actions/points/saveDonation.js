import { ROOT_URL } from "../../../config/config";
import { DONRESULT_TYPE , DATA_DONRESULT_TYPE} from "../actionTypes";
import { uiStartLoading, uiStopLoading } from "../index";

export const saveDonation = data => {
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/saveDonation";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        token:localStorage.getItem("myToken"),
        idpaiementmode : data.idpaiementmode,
        montant: data.montant,
        projectType : data.projectType 
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
          dispatch(donResult("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(donResult("success"));
          dispatch(datadon(parsedRes.data));
         
        }
      });
  };
};



export const donResult = value => {
  return {
    type: DONRESULT_TYPE,
    donResult: value
  };
};
export const datadon = value => {
  return {
    type: DATA_DONRESULT_TYPE,
    datadon: value
  };
};
