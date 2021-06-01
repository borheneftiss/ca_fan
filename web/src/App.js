import React, { Component } from "react";
import "./App.css";
import { Switch, Route } from "react-router-dom";
import About from "./pages/about/about.js";
import WizardForm from "./pages/signUp/index.js";
import RequestReg from "./pages/requestReg/index.js";

import Auth from "./pages/authentification/index.js";
import Challenges from "./pages/Challenges/index.js";
import Quiz from "./pages/Quiz/quiz.js";
import Responses from "./pages/Quiz/responses.js";
import QuizList from "./pages/Quiz/quizList.js";
import Points from "./pages/Points/points.js";
import Profil from "./pages/profil/profil.js";
import Contact from "./pages/contact/contact.js";
import Partenaires from "./pages/Partenaires/partenaires.js";
import Media from "./pages/media/media.js";
import { PrivateRouter } from "./pages/authentification/privateRouter.js"
import { Redirect } from 'react-router';
import { initializeFirebase } from './push-notification';

import * as serviceWorker from './serviceWorker';

class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      testPassData: "123",
      name:""
    };
  }

  myCallbackfb = (name, email, buttonfbclicked) => {
    this.setState({
      name: name,
      email: email,
      buttonfbclicked: buttonfbclicked
    });
  };
  mycallbackInscri = (inscriButton) =>{
    this.setState({ inscriButton: inscriButton})
  }

  render() {
   
    return (
      
      <Switch>
        <div>

           <Route exact path="/" component={() => <Redirect to="/bienvenue" />}/>
          <Route path="/bienvenue" exact    render={(props) => <RequestReg  {...props} callbackFromParentfb={this.myCallbackfb} callbackClickInscri={this.mycallbackInscri} />}/>


          <Route path="/about"    render={(props) => <About  {...props} testPassData={this.state.testPassData}/>}/>
          <Route path="/inscription"  render={(props) => <WizardForm {...props} namefb={this.state.name} emailfb={this.state.email} buttonfbclicked={this.state.buttonfbclicked}/>}/>
          <Route path="/authentification" component={Auth} />
          <Route path="/contact" component={Contact} />
          <PrivateRouter path="/profile" component={Profil} />
          <PrivateRouter path="/partenaires" component={Partenaires} />
          <PrivateRouter path="/media" component={Media} />
          <PrivateRouter path="/about" component={About} />
          <PrivateRouter path="/challenges" component={Challenges} />
          <PrivateRouter path="/points" component={Points} />
          <PrivateRouter path="/quiz" component={QuizList} />
          <PrivateRouter path="/responses" component={Responses} />
          <PrivateRouter path="/startquiz" component={Quiz} />
          {/* <Redirect from="*" to={"/welcome"} /> */}
        </div>
      </Switch>
      

    );
  }
}


initializeFirebase();

serviceWorker.unregister();

export default App;

