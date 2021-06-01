import { HISTORIQUERESULT_TYPE } from "../../actions/actionTypes";
import { DATA_HISTORIQUERESULT_TYPE } from "../../actions/actionTypes";

const initialState = {
    historicResult: "",
    datahistoric:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case HISTORIQUERESULT_TYPE:
      return {
        ...state,
        historicResult: action.historicResult
      };
      case DATA_HISTORIQUERESULT_TYPE:
      return {
        ...state,
        datahistoric: action.datahistoric
      };
    default:
      return state;
  }
};

export default reducer;
