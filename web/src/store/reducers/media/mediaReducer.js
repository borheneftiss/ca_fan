import { RESULT_GET_ARTICLES_TYPE } from "../../actions/actionTypes";
import { DATA_GET_ARTICLES_TYPE } from "../../actions/actionTypes";

const initialState = {
    getArticlesResult: "",
    DataArticles:[]
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    case RESULT_GET_ARTICLES_TYPE:
      return {
        ...state,
        getArticlesResult: action.getArticlesResult
      };
    case DATA_GET_ARTICLES_TYPE:
      return {
        ...state,
        DataArticles: action.DataArticles
      };
    default:
      return state;
  }
};

export default reducer;
