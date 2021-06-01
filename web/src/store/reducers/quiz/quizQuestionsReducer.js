import { QUIZ_QUESTIONS, IS_PLAYED , NB_QUESTIONS, QUESTIONS_IDS, SCORE} from "../../actions/actionTypes";

const initialState = {
  isPlayed: "",
  nbrQuestions:"",
  list_questions:[],
  QuestionsIds : [],
  score:''
};

const reducer = (state = initialState, action) => {
  switch (action.type) {
    
    case QUIZ_QUESTIONS:
      return {
        ...state,
        list_questions: action.list_questions
      };
      case IS_PLAYED:
      return {
        ...state,
        isPlayed: action.isPlayed
      };
      case NB_QUESTIONS:
      return {
        ...state,
        nbrQuestions: action.nbrQuestions
      };
      case QUESTIONS_IDS:
      return {
        ...state,
        QuestionsIds: action.QuestionsIds
      };
      case SCORE:
      return {
        ...state,
        score: action.score
      };
    default:
      return state;
  }
};

export default reducer;
