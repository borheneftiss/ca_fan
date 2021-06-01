import { SIGNUP_VERIF_MOBILE } from "../../actions/actionTypes";
import { SINUP_VERIF_CODE } from "../../actions/actionTypes";
import { SINUP_GET_MODES_PAYEMENT } from "../../actions/actionTypes";
import { SINUP_GET_PRODUCTS } from "../../actions/actionTypes";
import { SIGNUP_REGISTRATION } from "../../actions/actionTypes";
import { SINUP_GET_MODES_COVERY } from "../../actions/actionTypes";
import { SIGNUP_VERIF_USEREXIST } from "../../actions/actionTypes";
import { SIGNUP_VERIF_EMPTY } from "../../actions/actionTypes";

import { SINUP_GET_TYPE_CHOIX_CARD } from "../../actions/actionTypes";
import { DATA_SINUP_GET_TYPE_CHOIX_CARD } from "../../actions/actionTypes";

const initialState = {
  isNumberca: false,
  isEmptyNumberca: false,
  numberexists:"",
  codevalide: "",
  modespaiement: [],
  paiementmodes: [],
  testcovery: [],
  modesrecovery: [],
  getproducts: "",
  registStatus: "",
  gettypechoixcard:"",
  datalisttypechoixcard:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case SIGNUP_VERIF_MOBILE:
      return {
        ...state,
        isNumberca: action.isNumberca
      };
      case SIGNUP_VERIF_EMPTY:
      return {
        ...state,
        isEmptyNumberca: action.isEmptyNumberca
      };
    case SIGNUP_VERIF_USEREXIST:
      return {
        ...state,
        numberexists: action.numberexists
      };
    case SINUP_VERIF_CODE:
      return {
        ...state,
        codevalide: action.codevalide
      };
    case SINUP_GET_MODES_PAYEMENT:
      return {
        ...state,
        paiementmodes: action.paiementmodes
      };
    case SINUP_GET_MODES_COVERY:
      return {
        ...state,
        testcovery: action.testcovery
      };
    case SINUP_GET_PRODUCTS:
      return {
        ...state,
        getproducts: action.getproducts
      };
    case SIGNUP_REGISTRATION:
      return {
        ...state,
        registStatus: action.registStatus
      };
      case SINUP_GET_TYPE_CHOIX_CARD:
      return {
        ...state,
        gettypechoixcard: action.gettypechoixcard
      };
      case DATA_SINUP_GET_TYPE_CHOIX_CARD:
      return {
        ...state,
        datalisttypechoixcard: action.datalisttypechoixcard
      };
    default:
      return state;
  }
};

export default reducer;
