import { QUIZ_LIST,QUIZ_POINTS , QUIZ_RESPONSES, QUIZ_NOTFOUND, NB_RESPONSE , SCORE_QUIZ} from "../../actions/actionTypes";

const initialState = {
  quiz_responses:[],
  list_quiz:[],
  quiz_notfound:'',
  get_points: [],
  nbreponses: '',
  quiz_score: ''
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    
    case QUIZ_LIST:
      return {
        ...state,
        list_quiz: action.list_quiz
      };

      case QUIZ_NOTFOUND:
      return {
        ...state,
        quiz_notfound: action.quiz_notfound
      };

      case QUIZ_POINTS:
      return {
        ...state,
        get_points: action.get_points
      };

      case QUIZ_RESPONSES:
      return {
        ...state,
        quiz_responses: action.quiz_responses
      };
      case NB_RESPONSE:
      return {
        ...state,
        nbreponses: action.nbreponses
      };
      case SCORE_QUIZ:
      return {
        ...state,
        quiz_score: action.quiz_score
      };

    default:
      return state;
  }
};

export default reducer;
