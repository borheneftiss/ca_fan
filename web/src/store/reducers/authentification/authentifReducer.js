import { AUTHENTIF_TYPE } from "../../actions/actionTypes";
import { DATA_AUTHENTIF_TYPE } from "../../actions/actionTypes";
import { DATA_PROFILE_TYPE } from "../../actions/actionTypes";

const initialState = {
  isAuthentif: "",
  datauser:[],
  datauserprofile:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case AUTHENTIF_TYPE:
      return {
        ...state,
        isAuthentif: action.isAuthentif
      };
      case DATA_AUTHENTIF_TYPE:
      return {
        ...state,
        datauser: action.datauser
      };
      case DATA_PROFILE_TYPE:
      return {
        ...state,
        datauserprofile: action.datauserprofile
      };
    default:
      return state;
  }
};

export default reducer;
