import { ROOT_URL } from "../../../config/config";
import { uiStartLoading, uiStopLoading } from "../index";
import { EDIT_PROFILE } from "../actionTypes";

export const editprofile = data => {
  
  return dispatch => {
    dispatch(uiStartLoading());
    let api = "wp-json/caauth/editprofil";
    fetch(ROOT_URL + api, {
      method: "POST",
      body: JSON.stringify({
        ID: data.Id,
        Firstname: data.Firstname,
        Lastname: data.Lastname,
        Cin: data.Cin,
        Birthday: data.Birthday,
        Email: data.Email,
        Address: data.Address,
        City: data.City,
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
        if (parsedRes.status === "updated") {
          dispatch(editStatus(true));
        } else if (parsedRes.status === "fail") {
          dispatch(editStatus(false));
        }
      });
  };
};
export const updateAvatar = DataUpdate => {
  return dispatch => {
   
    let api = "wp-json/caauth/updateimage";
    const tokenNB = localStorage.getItem("myToken");
    const formData = new FormData();
    formData.append("token", tokenNB); 
    formData.append("upload_file", DataUpdate.file); 
    fetch(ROOT_URL + api, {
      method: "POST",
      headers: {
        Accept: "multipart/form-data"
      },
      body: formData 
    })
      .catch(err => {
        console.log(err);
      })
      .then(res => res.json())
      .then(parsedRes => {
       localStorage.setItem('imageurl',parsedRes.data);
      });
  };
};
export const editStatus = value => {
  return {
    type: EDIT_PROFILE,
    editStatus: value
  };
};
