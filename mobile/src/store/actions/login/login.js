import { ROOT_URL } from "../../../../config";
import  NavigationActions  from "../../../../NavigationService";

export const tryLogin = data => {
  return dispatch => {
    let api = "/wp-json/caauth/authentification";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone: data.phonenumber,
        numero: data.cardnumber,
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
        console.log(parsedRes.status);
        if(parsedRes.status === "exist"){
            NavigationActions.replace("Home")
        }
      });
  };
};
