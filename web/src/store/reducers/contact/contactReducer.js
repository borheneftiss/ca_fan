import { RESULT_SEND_CONTACT_TYPE } from "../../actions/actionTypes";
import { ERROR_SEND_CONTACT_TYPE } from "../../actions/actionTypes";
import { DATA_SEND_CONTACT_TYPE } from "../../actions/actionTypes";

const initialState = {
    Resultsendcontact: "",
    Errorsendcontact: "",
    Datasendcontact:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case RESULT_SEND_CONTACT_TYPE:
      return {
        ...state,
        Resultsendcontact: action.Resultsendcontact
      };
    case ERROR_SEND_CONTACT_TYPE:
      return {
        ...state,
        Errorsendcontact: action.Errorsendcontact
    };
      case DATA_SEND_CONTACT_TYPE:
      return {
        ...state,
        Datasendcontact: action.Datasendcontact
      };
    default:
      return state;
  }
};

export default reducer;
