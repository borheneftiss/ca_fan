import { createStore, combineReducers, compose, applyMiddleware } from "redux";
import thunk from "redux-thunk";
import { reducer as formReducer } from "redux-form";

import isLoading from "./reducers/Ui/ui";
import isNumberca from "./reducers/signup/verifmobile";
import isCodesms from "./reducers/signup/verifcodesms";
import errmessagecode from "./reducers/signup/verifcodesms";
import paymentcod from "./reducers/signup/modesPaymentmethods";
import paymentonline from "./reducers/signup/modesPaymentmethods";
import registerResponse from "./reducers/signup/register";
import initialValues from './reducers/signup/register'

const rootReducer = combineReducers({
  ui: isLoading,
  form: formReducer,
  isNumberca: isNumberca,
  isCodesms: isCodesms,
  errmessagecode: errmessagecode,
  paymentcod: paymentcod,
  paymentonline: paymentonline,
  registerResponse: registerResponse,
  initialValues:initialValues
});

let composeEnhancers = compose;

if (__DEV__) {
  composeEnhancers = window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ || compose;
}

const configureStore = () => {
  return createStore(rootReducer, composeEnhancers(applyMiddleware(thunk)));
};

export default configureStore;
