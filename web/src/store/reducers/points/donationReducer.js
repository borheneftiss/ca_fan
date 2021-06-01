import { DONRESULT_TYPE } from "../../actions/actionTypes";
import { DATA_DONRESULT_TYPE } from "../../actions/actionTypes";

const initialState = {
    donResult: "",
    datadon:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case DONRESULT_TYPE:
      return {
        ...state,
        donResult: action.donResult
      };
      case DATA_DONRESULT_TYPE:
      return {
        ...state,
        datadon: action.datadon
      };
    default:
      return state;
  }
};

export default reducer;
