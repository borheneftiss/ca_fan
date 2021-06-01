import { PROJECT_RESULT , PROJECT_DATA } from "../../actions/actionTypes";

const initialState = {
  projectResult: "",
    dataproject:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case PROJECT_RESULT:
      return {
        ...state,
        projectResult: action.projectResult
      };
      case PROJECT_DATA:
      return {
        ...state,
        dataproject: action.dataproject
      };
    default:
      return state;
  }
};

export default reducer;
