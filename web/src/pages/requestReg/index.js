import React, { Component } from "react";
import "./requestReg.css";
import Button from "@material-ui/core/Button";
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js"
import FacebookLogin from 'react-facebook-login';
import history from "../../history";


class RequestReg extends Component {
  constructor(props) {
    super(props);
    this.state = {
      isLogedIn: false,
      name: '',
      email: '',
      picture: '',
      buttonfbclicked: 'fbnonclicked',
      inscriButton: "initial",
    };
  }
  VerAuth = () => {
    history.push("/authentification");
  };
  VerForm = () => {
    localStorage.setItem('datainscri', "vide");
    localStorage.setItem('buttonfbclick', "buttonfbNonclicked");
    history.push("/inscription");
    this.setState({inscriButton:"inscriClicked"})
    this.PassStatueClickInscri();
  };


  responseFacebook = response => {
    if(response)
    {
      if(response.userID!=="" && response.userID!==undefined)
      {
        this.setState({
          isLogedIn: true,
          userID: response.userID,
          name: response.name,
          email: response.email
        })
        this.PassDataFbToParent();
        
        if(response.id)
        {
          localStorage.setItem('buttonfbclick', "buttonfbclicked");
          this.props.history.push("/inscription");
        }
      }
     
    }
    
    
  }

  componentClicked= response => {
    

    localStorage.setItem('buttonfbclick', "buttonfbclicked");
    this.props.history.push("/inscription");
  }

  PassDataFbToParent = () => {
    this.props.callbackFromParentfb(
      this.state.name,
      this.state.email,
      this.state.buttonfbclicked
    );
    //this.props.history.push("/inscription");
  };

  PassStatueClickInscri = () => {
    this.props.callbackClickInscri(
      this.state.inscriButton
    )
  }




  render() {
    return (
      <div style={{ position: "absolute" }}>
        <div className="ImgBack" />
        <div className="divContainer">
          <div className="flex-container">
            <div>
              <img style={{ width: "100px" }} src={logo} alt="" />
            </div>
            <div>
              <p>
                une carte de fidélité spécialement destinée aux supporters du club africain
            </p>
            </div>


            <div style={{ textAlign: "center" }}>
            <div>
                <Button
                  onClick={this.VerAuth}
                  className="Buttondejamenbre"
                  variant="outlined"
                  color="secondary"
                >
                  Déja Membre
                </Button>
              </div>
              <div>
                <Button
                  onClick={this.VerForm}
                  className="ButtonInscri"
                  id="inscri"
                  variant="outlined"
                  color="secondary"
                >
                  Inscription
            </Button>
              </div>
              <div>
                <p className="fbstyle">ou via</p>
              </div>


                {/*Boutton facebookkkkkkkkkkk*/}
                <div>
                <FacebookLogin
                  /*id de l'app reactcafun*/
                  appId="371389116787301"
                  /*id de l'app reacttest*/
                  //appId="388182808681090"
                  autoLoad={false}
                  fields="name,email,picture"
                  
                  callback={this.responseFacebook}
                  cssClass="btnFacebook"
                  textButton={<p className="inscfbStyle">Inscription avec facebook</p>}
                />
             </div>
            </div>

          </div>
          <div className="divFooterInscription">
            <FooterInscription id="footerReqReg" />
          </div>


        </div>
      </div>
    );
  }
}

export default RequestReg;
