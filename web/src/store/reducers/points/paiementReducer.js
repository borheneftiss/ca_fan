import { PAIEMENT_RESULT_DON , PAIEMENT_DATA_DON } from "../../actions/actionTypes";

const initialState = {
  paiementResultDon: "",
    datapaiementDon:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case PAIEMENT_RESULT_DON:
      return {
        ...state,
        paiementResultDon: action.paiementResultDon
      };
      case PAIEMENT_DATA_DON:
      return {
        ...state,
        datapaiementDon: action.datapaiementDon
      };
    default:
      return state;
  }
};

export default reducer;
