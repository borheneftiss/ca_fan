import { UI_START_LOADING, UI_STOP_LOADING } from "../../actions/actionTypes";
import { UI_START_LOADING_BTN, UI_STOP_LOADING_BTN } from "../../actions/actionTypes";

const initialState = {
  isLoading: false,
  isLoadingBtn: false,

};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case UI_START_LOADING:
      return {
        ...state,
        isLoading: true
      };
    case UI_STOP_LOADING:
      return {
        ...state,
        isLoading: false
      };
    case UI_START_LOADING_BTN:
      return {
        ...state,
        isLoadingBtn: true
      };
    case UI_STOP_LOADING_BTN:
      return {
        ...state,
        isLoadingBtn: false
      };
    default:
      return state;
  }
};

export default reducer;