import React from "react";
import { reduxForm } from "redux-form";
import validate from "../../utils/validate";
import Card from "@material-ui/core/Card";
import "./WizardFormSecondPage.css";
import { connect } from "react-redux";
import { verifcode } from "../../store/actions";
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js"


class WizardFormSecondPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      telephone: "",
      page: 1,
      test:"25",
      formData: "",
      numOne: this.props.numOne,
      numTwo: this.props.numTwo,
      numThree: this.props.numThree,
      numFor: this.props.numFor,
      codefinal: "",
      codeconcat: ""
    };
    this.handleChange1 = this.handleChange1.bind(this);
    this.handleChange2 = this.handleChange2.bind(this);
    this.handleChange3 = this.handleChange3.bind(this);
    this.handleChange4 = this.handleChange4.bind(this);
  }
  handleChange1(event) {
    this.setState({ numOne: event.target.value });
    this.numTwo.focus();
  }
  handleChange2(event) {
    this.setState({ numTwo: event.target.value });
    this.numThree.focus();
  }
  handleChange3(event) {
    this.setState({ numThree: event.target.value });
    this.numFor.focus();
  }
  handleChange4(event) {
    this.setState({ numFor: event.target.value });
  }

  ClickVerifCode = () => {
    this.props.verifcode(
      this.props.formData.telephone,
      `${this.state.numOne}${this.state.numTwo}${this.state.numThree}${
      this.state.numFor
      }`
    );
    this.someFn2()
  };


  someFn2 = () => {
    this.props.callbackFromParent2(
      this.state.test,
      this.state.numOne,
      this.state.numTwo,
      this.state.numThree,
      this.state.numFor,
    );
  };

  preced = () => {
    this.someFn2()
  }

  componentDidMount() {
    this.numOne.focus();
  }
  render() {
    const { handleSubmit, previousPage } = this.props;
    return (
      <div>
        <div>
          <div className="ImgBack" />
          <div className="formTwoInscri">
            <div className="containerLikeFormTwo">
              <div id="divLogowithDesc">
                <div className="divLogo"><img style={{ width: "85px" }} src={logo} alt="" /></div>
                <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>
              </div>

              <div>
                <Card className="cardStyleFormOne">
                  <form onSubmit={handleSubmit} id="SecForm" className="SecformAlign">
                    <div style={{ width: "35%", margin: "0 auto" }}>
                      <p className="titleSecPage">VERIFICATION</p>
                    </div>
                    <div>
                      <p className="pSecPage">
                        entrer le code de vérification envoyé à{" "}
                        {this.props.formData.telephone}{" "}
                      </p>
                    </div>
                    <div>
                      <p
                        style={{
                          textAlign: "center",
                          color: "grey",
                          fontFamily: "Roboto"
                        }}
                      >
                        code de vérification{" "}
                      </p>
                    </div>

                    <div style={{ margin: "0 auto", width: "70%" }}>
                      <div>
                        <input
                          name="firstInput"
                          style={{ height: "24px", width: "15px", marginLeft: "1%", borderRadius: "8px" }}
                          type="text"
                          id="numOne"
                          maxLength="1"
                          value={this.state.numOne}
                          onChange={this.handleChange1}
                          ref={(input) => { this.numOne = input; }}
                        />
                      </div>
                      <div>
                        <input
                          name="secondInput"
                          style={{ height: "24px", width: "15px", marginLeft: "1%", borderRadius: "8px" }}
                          type="text"
                          id="numTwo"
                          maxLength="1"
                          value={this.state.numTwo}
                          onChange={this.handleChange2}
                          ref={(input) => { this.numTwo = input; }}
                        />
                      </div>
                      <div>
                        <input
                          name="thirdInput"
                          style={{ height: "24px", width: "15px", marginLeft: "1%", borderRadius: "8px" }}
                          type="text"
                          id="numThree"
                          maxLength="1"
                          value={this.state.numThree}
                          onChange={this.handleChange3}
                          ref={(input) => { this.numThree = input; }}
                        />
                      </div>
                      <div>
                        <input
                          name="forInput"
                          style={{ height: "24px", width: "15px", marginLeft: "1%", borderRadius: "8px" }}
                          type="text"
                          id="numFor"
                          maxLength="1"
                          onChange={this.handleChange4}
                          value={this.state.numFor}
                          ref={(input) => { this.numFor = input; }}
                        />
                      </div>
                    </div>
                    <span>
                      {this.props.codevalide === "mismatched" && (
                        <MessageIncorespondance />
                      )}
                    </span>
                    <span>
                      {this.props.codevalide === "invalid" && <MessageInvalid />}
                    </span>
                    <span>
                      {this.props.codevalide === "empty_telephone" && <MessageEmpty />}
                    </span>

                    <div className="divMsg">
                      <p className="MsgCode">
                        je n'ai pas reçu le code de vérification par SMS
                      </p>
                    </div>
                    <div id="PrevNextFormTwo">
                      <button
                        style={{
                          background: "#E31B28",
                          border: "1px solid #E31B28",
                          width: "70%",
                          borderRadius: "25px",
                          fontFamily: "Lato",
                          fontSize: "15px"
                        }}
                        id="buttonPreviousSecForm"
                        className="previous"
                        type="submit"
                        onClick={previousPage}
                      >
                        Précédent
                     </button>
                      <button
                        className="ButtonSecForm"
                        type="submit"
                        id="buttonNextSecForm"
                        onClick={this.ClickVerifCode}
                        disabled={
                          this.state.numOne === "" ||
                          this.state.numTwo === "" ||
                          this.state.numThree === "" ||
                          this.state.numFor === ""
                        }
                      >
                        Suivant
                      </button>
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
      </div>
    );
  }
}

const MessageIncorespondance = () => (
  <span style={{ color: "green", fontFamily: "Roboto", fontSize: "12px" }}>
    le numéro ne correspond pas au code
  </span>
);

const MessageInvalid = () => (
  <span style={{ color: "green", fontFamily: "Roboto", fontSize: "12px" }}>
    le code n’est pas valide
  </span>
);

const MessageEmpty = () => (
  <span style={{ color: "green", fontFamily: "Roboto", fontSize: "12px" }}>
    Empty telephone or Empty code
  </span>
);

const mapStateToProps = state => {
  return {
    codevalide: state.codevalide.codevalide,
    modespaiement: state.modespaiement.modespaiement
  };
};

const mapDispatchToProps = dispatch => {
  return {
    verifcode: (telephone, code) => dispatch(verifcode(telephone, code))
  };
};

WizardFormSecondPage = connect(
  mapStateToProps,
  mapDispatchToProps
)(WizardFormSecondPage);

export default reduxForm({
  form: "wizard",
  destroyOnUnmount: false,
  validate
})(WizardFormSecondPage);
