import React, { Component } from "react";
import PropTypes from "prop-types";
import WizardFormFirstPage from "./WizardFormFirstPage";
import WizardFormSecondPage from "./WizardFormSecondPage";
import WizardFormThirdPage from "./WizardFormThirdPage";
import WizardFormRecap from "./WizardFormRecapPage";
import { connect } from "react-redux";
import WizardFormChoixCarte from "./choixCarte"
import { modespaiementget } from "../../store/actions";
import ReqChecked from "./check";


class WizardForm extends Component {
  constructor(props) {
    super(props);
    this.previousPage = this.previousPage.bind(this);
    this.state = {
      page: 1,
      formData: "",
      test:"",
      numOne: "",
      numTwo: "",
      numThree: "",
      numFor: "",
      codefinal: "",
      paiementmodes: [],
      testcovery: [],
      Idrecoverymode: "",
      Idpaiementmode: "",
      nameBoutique:"",
      cartechoixvalue:"",
      cartechoixtitle:""
    };
  }
  previousPage() {
    localStorage.setItem("datainscri", "datainscri");
    this.setState({ page: this.state.page - 1 });
  }


  nextPage = Values => {
    this.setState({ page: this.state.page + 1 });
    this.setState({ formData: Values });
  };

  nextPage3 = Values => {
    this.setState({ page: this.state.page + 1 });
  };
  nextPagechoix =Values => {
    this.setState({ page: this.state.page + 1 });
  };

  componentWillReceiveProps(prevProps){
   
    if(prevProps.registStatus !== this.props.registStatus){
      if (prevProps.registStatus === true) {
        this.setState({ page: this.state.page + 1 });
       }else if (prevProps.registStatus === false) {
         alert("vous ne pouvez pas s'inscrire")
       }
    }
    else if(prevProps.codevalide !== this.props.codevalide){
      if (prevProps.codevalide === "success") {
        this.setState({ page: this.state.page + 1 });
       }
    }
    }
    
  componentDidMount() {
    this.props.modespaiementget();
  }

  myCallback = (Idrecoverymode, Idpaiementmode, nameBoutique) => {
    
    this.setState({
      Idrecoverymode: Idrecoverymode,
      Idpaiementmode: Idpaiementmode,
      nameBoutique: nameBoutique
    });
  };

  myCallbackCodeSend = (test, numOne, numTwo, numThree, numFor ) => {
    
    this.setState({
      test: test,
      numOne: numOne,
      numTwo: numTwo,
      numThree: numThree,
      numFor: numFor,
    });
  };

  myCallbackchoixCarte = (cartechoixvalue,cartechoixtitle,cartechoixmontant,cartechoixduree) => {
    this.setState({
      cartechoixvalue: cartechoixvalue,
      cartechoixtitle:cartechoixtitle,
      cartechoixmontant:cartechoixmontant,
      cartechoixduree:cartechoixduree,
    });
  };


  render() {
    const { page } = this.state;
    return (
      <div>
        {page === 1 && (
          <WizardFormFirstPage
            onSubmit={this.nextPage}
            formData={this.state.formData}
            numOne={this.state.numOne}
            numTwo={this.state.numTwo}
            numThree={this.state.numThree}
            numFor={this.state.numFor}
            namefb={this.props.namefb}
            emailfb={this.props.emailfb}
          />
        )}
        {page === 2 && (
          <WizardFormSecondPage
            previousPage={this.previousPage}
            onSubmit={this.nextPage2}
            formData={this.state.formData}
            codefinal={this.state.codefinal}
            callbackFromParent2={this.myCallbackCodeSend}
            numOne={this.state.numOne}
            numTwo={this.state.numTwo}
            numThree={this.state.numThree}
            numFor={this.state.numFor}
          />
        )}
        {page === 3 && (
          <WizardFormChoixCarte
            previousPage={this.previousPage}
            onSubmit={this.nextPagechoix}
            formData={this.state.formData}
            callbackFromParentChoixCarte={this.myCallbackchoixCarte}
          />
        )}
        {page === 4 && (
          <WizardFormThirdPage
            previousPage={this.previousPage}
            onSubmit={this.nextPage3}
            formData={this.state.formData}
            paiementmodes={this.props.paiementmodes}
            testcovery={this.props.testcovery}
            callbackFromParent={this.myCallback}
            Idrecoverymode={this.state.Idrecoverymode}
            Idpaiementmode={this.state.Idpaiementmode}
          />
        )}
        {page === 5 && (
          <WizardFormRecap
            previousPage={this.previousPage}
            //onSubmit={this.nextPage4}
            //callbackFromParent={this.myCallback}
            Idrecoverymode={this.state.Idrecoverymode}
            Idpaiementmode={this.state.Idpaiementmode}
            nameBoutique={this.state.nameBoutique}
            formData={this.state.formData}
            cartechoixvalue={this.state.cartechoixvalue}
            cartechoixtitle={this.state.cartechoixtitle}
            cartechoixmontant={this.state.cartechoixmontant}
            cartechoixduree={this.state.cartechoixduree}
          /> 
        )}
        {page === 6 && (
          <ReqChecked
            previousPage={this.previousPage}
            onSubmit={this.nextPage4}
            //onSubmit={onSubmit}
            //callbackFromParent={this.myCallback}
            Idrecoverymode={this.state.Idrecoverymode}
            Idpaiementmode={this.state.Idpaiementmode}
            formData={this.state.formData}
          /> 
        )}
      </div>
    );
  }
}

const mapStateToProps = state => {
  return {
    formData: state.formData,
    codevalide: state.codevalide.codevalide,
    isNumberca: state.isNumberca.isNumberca,
    registStatus: state.registStatus.registStatus,
    paiementmodes: state.paiementmodes.paiementmodes,
    testcovery: state.testcovery.testcovery
  };
};

const mapDispatchToProps = dispatch => {
  return {
    modespaiementget: () => dispatch(modespaiementget()),
  };
};

WizardForm = connect(
  mapStateToProps,
  mapDispatchToProps
)(WizardForm);

WizardForm.propTypes = {
  onSubmit: PropTypes.func.isRequired
};

export default WizardForm;
