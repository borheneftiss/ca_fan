import { EDIT_PROFILE } from "../../actions/actionTypes";

const initialState = {
    editStatus: "",
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case EDIT_PROFILE:
      return {
        ...state,
        editStatus: action.editStatus
      };
    default:
      return state;
  }
};

export default reducer;
