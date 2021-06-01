import React from "react";
import { Field, reduxForm } from "redux-form";
import validate from "../../utils/validate";
import Card from "@material-ui/core/Card";
import "./choixCarte.css";
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js"
import iconChoixCarte from "../../assets/signUp/iconchoixCarte.png"
import PropTypes from 'prop-types';
import { connect } from "react-redux";
import { gettypecard } from "../../store/actions";

class WizardFormChoixCarte extends React.Component {

  componentDidMount() {
    this.props.gettypecard();
}

  constructor(props) {
    super(props);
    this.state = {
      cartechoixvalue: 'Silver (4DT / 3mois)',
      cartechoixtitle:'',
      cartechoixmontant:'',
      cartechoixduree:'',
    };
  }

  handleChange = event => {
    this.setState({ cartechoixvalue: event.target.id, cartechoixtitle:event.target.value, cartechoixmontant:event.target.getAttribute('data-montant'),
    cartechoixduree:event.target.getAttribute('data-duree')
  });
  };

  someFn = () => {
    this.props.callbackFromParentChoixCarte(
      this.state.cartechoixvalue,
      this.state.cartechoixtitle,
      this.state.cartechoixmontant,
      this.state.cartechoixduree,
    );
  };

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
                  <form onSubmit={handleSubmit} className="ChoixCarteForm">

                    <div className="flexChoixCarte">
                      <div style={{ paddingBottom: "20px" }}><img className="imgChoixCarte" src={iconChoixCarte} alt="" /></div>
                      <div>
                        <p className="ptitleChoixCarte">Choix de la Carte</p>
                        <p className="psoustitleChoixCarte">choisissez une des cartes suivantes</p>
                      </div>
                      <div id="radioCenter">

                      {this.props.datalisttypechoixcard.map(datalisttypechoixcard => (
                              <label className="labelStyle" style={{ color: "#393939", fontWeight: "bold", fontSize: "15px" }}>
                                    <Field type="radio" name="sex" component="input" id={datalisttypechoixcard["id"]}
                                      value={datalisttypechoixcard["title"]} data-montant={datalisttypechoixcard["montant"]}
                                      data-duree={datalisttypechoixcard["duree"]}
                                      onChange={this.handleChange}
                                    />{' '}
                                    {datalisttypechoixcard["title"]} ({datalisttypechoixcard["montant"]}DT/{datalisttypechoixcard["duree"]})<br/>
                              </label>
                              ))}
                      </div>
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
                        //onClick={nextPage}
                        onClick={this.someFn}
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

const mapStateToProps = state => {
  return {
  gettypechoixcard: state.gettypechoixcard.gettypechoixcard,
  datalisttypechoixcard: state.datalisttypechoixcard.datalisttypechoixcard,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    gettypecard: ()=>dispatch(gettypecard())
  };
};

WizardFormChoixCarte = connect(
  mapStateToProps,
  mapDispatchToProps
)(WizardFormChoixCarte);

WizardFormChoixCarte.propTypes = {
  classes: PropTypes.object.isRequired,
};


export default reduxForm({
  form: "wizard",
  destroyOnUnmount: false,
  validate
})(WizardFormChoixCarte);
