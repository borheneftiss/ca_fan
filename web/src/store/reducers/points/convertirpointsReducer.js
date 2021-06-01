import { LIST_CONVERT_POINTS_RESULT_TYPE } from "../../actions/actionTypes";
import { DATA_LIST_CONVERT_POINTS_TYPE } from "../../actions/actionTypes";

const initialState = {
    listconvertpointResult: "",
    datalistconvertpointResult:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case LIST_CONVERT_POINTS_RESULT_TYPE:
      return {
        ...state,
        listconvertpointResult: action.listconvertpointResult
      };
      case DATA_LIST_CONVERT_POINTS_TYPE:
      return {
        ...state,
        datalistconvertpointResult: action.datalistconvertpointResult
      };
    default:
      return state;
  }
};

export default reducer;
