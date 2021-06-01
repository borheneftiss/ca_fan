import React from "react";
import ReactDOM from "react-dom";
import { Provider } from "react-redux";
import App from './App';
import configureStore from "../src/store/configureStore";
import history from "./history";
import { Router } from "react-router";
const store = configureStore()


ReactDOM.render(

  <Provider store={store}>
    <Router history={history}>
      <App />
    </Router>
  </Provider>

  , document.getElementById('root'));
