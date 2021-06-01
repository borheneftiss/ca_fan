import { SIGNUP_VERIF_CODESMS } from "../../actions/actionTypes";

const initialState = {
  isCodesms: false,
  errmessagecode: ""
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case SIGNUP_VERIF_CODESMS:
      return {
        ...state,
        isCodesms: action.isCodesms,
        errmessagecode: action.errmessagecode
      };
    default:
      return state;
  }
};

export default reducer;
