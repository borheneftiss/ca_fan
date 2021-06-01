import { SIGNUP_MODES_PAYMENT } from "../../actions/actionTypes";

const initialState = {
  paymentcod: [],
  paymentonline: []
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case SIGNUP_MODES_PAYMENT:
      return {
        ...state,
        paymentcod: action.paymentcod,
        paymentonline: action.paymentonline
      };
    default:
      return state;
  }
};

export default reducer;
