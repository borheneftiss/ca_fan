import {RESULT_PARTENAIRES, DATA_PARTENAIRES } from "../../actions/actionTypes";


const initialState = {
  ResultPartenaires: "",
  DataPartenaires:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case RESULT_PARTENAIRES:
      return {
        ...state,
        ResultPartenaires: action.ResultPartenaires
      };
      case DATA_PARTENAIRES:
      return {
        ...state,
        DataPartenaires: action.DataPartenaires
      };
    default:
      return state;
  }
};

export default reducer;
