import { ROOT_URL } from "../../../config/config";
import { PROJECT_RESULT , PROJECT_DATA } from "../actionTypes";


export const projectList = data => {
  return dispatch => {
    let api = "wp-json/caauth/getprojects";
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
          dispatch(projectResult("fail"));
        }  else if (parsedRes.status === "success") {
          dispatch(projectResult("success"));
          dispatch(dataproject(parsedRes.data));
          
        }
      });
  };
};

export const projectResult = value => {
  return {
    type: PROJECT_RESULT,
    projectResult: value
  };
};
export const dataproject = value => {
  return {
    type: PROJECT_DATA,
    dataproject: value
  };
};
