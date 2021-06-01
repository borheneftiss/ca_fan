import React from "react";
import validate from "../../utils/validate";
import renderField from "./renderField";
import { Field, reduxForm, formValueSelector, initialize } from "redux-form";
import Card from "@material-ui/core/Card";
import Typography from "@material-ui/core/Typography";
import { connect } from "react-redux";
import { tryVerifMobile } from "../../store/actions";
import { sendsms } from "../../store/actions";
import { verifcode } from "../../store/actions";
import logo from "../../assets/signUp/logoCA.svg";
import "./WizardFormFirstPage.css";
import FooterInscription from "../../component/footerInscription/footerInscription.js"
import "react-datepicker/dist/react-datepicker.css";
import Recaptcha from "react-recaptcha";
class WizardFormFirstPage extends React.Component {
  constructor(props) {
    super(props);
    this.recaptchaloaded = this.recaptchaloaded.bind(this);
    this.verifyCallback = this.verifyCallback.bind(this);
    this.state = {
      telephone: "",
      page: 1,
      formData: "",
      lengthTel: "",
      numOne: "",
      numTwo: "",
      numThree: "",
      numFor: "",
      email: "fffff",
      nom: "ggggg",
      Captchacheck: false,
      telephoneprops: "",
      maxDate: this.gettoday(),
      istel: false
    };
  }
  gettoday() {
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth() + 1; //January is 0!
    var yyyy = today.getFullYear();
    if (dd < 10) {
      dd = '0' + dd
    }
    if (mm < 10) {
      mm = '0' + mm
    }
    today = yyyy + '-' + mm + '-' + dd;
    return today;
  }
  handleSend = () => {
    if (this.props.isNumberca === true) {
      this.props.sendsms(this.props.telephone);
    }
  };
  handleVerif(e) {
    var value = e.target.value;
    if (value.length > 8) {
      e.preventDefault();
    }
    else {
      if (e.target.value !== "") {
        this.props.tryVerifMobile(e.target.value);
      }
    }
  };
  recaptchaloaded() {
  }
  verifyCallback(response) {
    if (response) {
      this.setState({
        Captchacheck: !this.state.Captchacheck
        //Captchacheck: true
      });
    }
  }
  expiredCallback() {
  
    this.setState({
      Captchacheck:false
    }) 
  }
  componentDidMount() {
    if ((localStorage.getItem('buttonfbclick') === "buttonfbclicked") && (this.props.emailfb !== undefined || this.props.namefb !== "")) {
      const initialFormData = {
        email: this.props.emailfb,
        nom: this.props.namefb,
        prenom: this.props.lastname,
        naissance: this.props.birthday,
        telephone: this.props.telephone,
        cin: this.props.cin,
        city: this.props.city,
        address: this.props.address
      }
      this.props.dispatch(initialize('WizardFormFirstPage', initialFormData))
    } else if ((localStorage.getItem('buttonfbclick') === "buttonfbNonclicked") && (localStorage.getItem('datainscri') === "vide")) {
      const initialFormData = {
        email: "",
        nom: "",
        prenom: "",
        naissance: "",
        telephone: "",
        cin: "",
        city: "",
        address: ""
      }
      this.props.dispatch(initialize('WizardFormFirstPage', initialFormData))
      this.props.dispatch(tryVerifMobile(initialFormData.telephone))
    } else if ((localStorage.getItem('buttonfbclick') === "buttonfbNonclicked") && (localStorage.getItem('datainscri') === "datainscri")) {
      const initialFormData = {
        email: this.props.email,
        nom: this.props.firstname,
        prenom: this.props.lastname,
        naissance: this.props.birthday,
        telephone: this.props.telephone,
        cin: this.props.cin,
        city: this.props.city,
        address: this.props.address
      }
      this.props.dispatch(initialize('WizardFormFirstPage', initialFormData))
    }
  }
  handleKeyPress = e => {
    var value = e.target.value;
    if (value.length > 8) {
      e.preventDefault();
    } else {
     
    }
  }
  render() {
    
    const { handleSubmit } = this.props;
    return (
      <div>
        <div className="ImgBack" />
        <div className="formOneInscri">
          <div className="containerLike">
            <div id="divLogowithDesc">
              <div className="divLogo"><img style={{ width: "85px" }} src={logo} alt="" /></div>
              <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>
            </div>

            <div>
              <Card className="cardStyleFormOne" >
                <Typography
                  style={{
                    fontFamily: "Lato",
                    fontSize: "20px",
                    fontWeight: "bold",
                    color: "#282c34",
                    textAlign: "center",
                    paddingTop: "40px",
                  }}
                >
                  CRÉER UN COMPTE
                </Typography>
                <form 
                onSubmit={handleSubmit} 
                className="formAlign">
                  <Field id="inputForm1" name="nom" label="Nom" component={renderField} />
                  <Field name="prenom" label="Prénom" component={renderField} />
                  <Field
                    name="naissance"
                    label="Date Naissance"
                    type="date"
                    max={this.state.maxDate}
                    inputProps={{ readOnly: true }}
                    readOnly={true}
                    component={renderField}
                  />
                  <Field name="email" label="Email" component={renderField} />
                  <Field
                    name="telephone"
                    label="Téléphone"
                    type="number"
                    Autocomplete="off"
                    component={renderField}
                    onKeyPress={this.handleKeyPress}
                    onChange={evt => this.handleVerif(evt)}
                  />
                  <span>{this.props.isNumberca === true && this.props.numberexists === "camobile" && <TrueMobile />}</span>
                  <span>
                    {this.props.isNumberca === false && this.props.numberexists === "notcamobile" && this.props.telephone !== undefined && (
                      <FalseMobile />
                    )}
                  </span>
                  <span>
                    {this.props.isNumberca === true && this.props.numberexists === "numberexists" && this.props.telephone !== undefined && (
                      <ExistCompte />
                    )}
                  </span>
                  <span>
                    {
                      this.props.isEmptyNumberca === true && this.props.isNumberca === false && (
                        <EmptyPhoneMobile />
                      )}
                  </span>
                  <Field name="cin" label="CIN" type="number"
                    onChange={this.handleKeyPress}
                    component={renderField} />
                  <Field name="city" label="Ville" component={renderField} />
                  <Field name="address" label="Adresse" component={renderField} />
                  <div>
                    <button
                      className="ButonFirstForm"
                      type="submit"
                      onClick={this.handleSend}
                      disabled={
                        this.props.isNumberca === false ||
                        this.props.numberexists === "numberexists" ||
                        !this.state.Captchacheck
                        //this.state.Captchacheck === false
                      }
                    >
                      Suivant
                    </button>
                  </div>
                  <div className="posCaptcha">
                    <Recaptcha
                      sitekey="6Lcd15YUAAAAAIBrzGRJsp0o0n0blUPT5OvrZhGL"
                      //sitekey="6Ld96ZcUAAAAANg2DIU6_40IV4tevuVy1KSQ8SDs"
                      render="explicit"
                      onloadCallback={this.recaptchaloaded}
                      verifyCallback={this.verifyCallback}
                      expiredCallback={this.expiredCallback}
                    />
                  </div>
                  <div className="pcontainer">
                    <p className="pStyle">
                      Vous Allez recevoir un sms contenant votre code de vérification
                    </p>
                  </div>
                </form>
              </Card>
            </div>
          </div>
          <div className="divFooterInscription">
            <FooterInscription />
          </div>
        </div>
      </div>
    );
  }
}


const FalseMobile = () => (
  <span className="messageNotif">
    Le numéro n'est pas CA Mobile
  </span>
);
const EmptyPhoneMobile = () => (
  <span className="messageNotif">
  </span>
);
const ExistCompte = () => (
  <span className="messageNotif">
    Vous avez un compte avec ce numéro
  </span>
);
const TrueMobile = () => (
  <span className="messageNotifSuccess">
    Le numéro est un CA Mobile
  </span>
);
const selector = formValueSelector("WizardFormFirstPage");
const mapStateToProps = state => {
  return {
    isEmptyNumberca: state.isEmptyNumberca.isEmptyNumberca,
    isNumberca: state.isNumberca.isNumberca,
    numberexists: state.numberexists.numberexists,
    codevalide: state.codevalide.codevalide,
    firstname: selector(state, "nom"),
    lastname: selector(state, "prenom"),
    birthday: selector(state, "naissance"),
    email: selector(state, "email"),
    telephone: selector(state, "telephone"),
    cin: selector(state, "cin"),
    city: selector(state, "city"),
    address: selector(state, "address")
  };
};
const mapDispatchToProps = dispatch => {
  return {
    tryVerifMobile: telephone => dispatch(tryVerifMobile(telephone)),
    sendsms: telephone => dispatch(sendsms(telephone)),
    verifcode: (telephone, code) => dispatch(verifcode(telephone, code))
  };
};
WizardFormFirstPage = connect(
  mapStateToProps,
  mapDispatchToProps
)(WizardFormFirstPage);
export default reduxForm({
  form: "WizardFormFirstPage",
  destroyOnUnmount: false,
  validate
})(WizardFormFirstPage);
