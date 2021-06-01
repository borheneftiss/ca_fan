
import { ROOT_URL } from "../../../config/config"
import { SINUP_GET_PRODUCTS } from "../actionTypes"


export const getproduits = () => {
  return dispatch => {
    let api = "wp-json/caauth/getproduits";
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
          dispatch(getproducts(parsedRes.data[0]));
        } 
      });
  };
};



export const getproducts = value => {
  return {
    type: SINUP_GET_PRODUCTS,
    getproducts: value,
  };
};
