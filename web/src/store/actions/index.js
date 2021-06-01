export { uiStartLoading, uiStopLoading } from "./ui/ui";
export { uiStartLoadingBtn, uiStopLoadingBtn } from "./ui/ui";

//Sign up
export { tryVerifMobile } from "./signup/verifmobile";
export { sendsms } from "./signup/sendsms";
export { verifcode } from './signup/verifcode';
export { modespaiementget } from './signup/modespaiementget';
export { getproduits } from './signup/getproduits';
export { registration } from './signup/registration';
export { gettypecard } from './signup/choixtypecard';

//authentification

export { authentification } from './authentification/authentification';

//Quiz

export { getQuizList } from './quiz/quizList';
export { getQuizQuestions } from './quiz/quizQuestions';
export { getQuizResponses } from './quiz/quizResponse';
export { saveResponse } from './quiz/saveResponse';

//Edit profile

export { editprofile , updateAvatar} from './profile/editprofile';

//historique points
export { historiquepoints } from "./points/historique";

//point
export { projectList } from "./points/projets";
export { paiementModesDon } from "./points/paiementModes";
export { convertirpoints } from "./points/convertirpoints";
export { saveDonation } from "./points/saveDonation";
//contact

export { contacterNous } from "./contact/contact";

//partenaires
export { getPartners } from "./partenaires/partenaires";


//media
export { getarticles } from "./media/actualite";
