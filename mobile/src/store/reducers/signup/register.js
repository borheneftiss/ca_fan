import { SIGNUP_REGISTER_RESPONSE } from "../../actions/actionTypes";

const initialState = {
  registerResponse: false,
  initialValues: {
    firstName: "Jane",
    lastName: "Doe",
  }
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case SIGNUP_REGISTER_RESPONSE:
      return {
        ...state,
        registerResponse: action.registerResponse
      };
    default:
      return state;
  }
};

export default reducer;
