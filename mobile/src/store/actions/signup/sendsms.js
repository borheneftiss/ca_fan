import { ROOT_URL } from "../../../../config";

export const trySendsms = number => {
  return dispatch => {
    let api = "/wp-json/caauth/sendsms";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        telephone: number
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
      });
  };
};
