import { SIGNUP_VERIF_MOBILE } from "../../actions/actionTypes";

const initialState = {
  isNumberca: false
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case SIGNUP_VERIF_MOBILE:
      return {
        ...state,
        isNumberca: action.isNumberca
      };
    default:
      return state;
  }
};

export default reducer;
