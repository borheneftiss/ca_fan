import React from "react";
import { reduxForm } from "redux-form";
import validate from "../../utils/validate";
import Card from "@material-ui/core/Card";
import { getproduits } from "../../store/actions";
import { registration } from "../../store/actions";
import { connect } from "react-redux";
import * as moment from "moment";
import "./WizardFormRecapPage.css"
//import img from "../../bg.png"
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js";
import CircularProgress from "@material-ui/core/CircularProgress";

class WizardFormRecap extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      telephone: "",
      page: 1,
      formData: "",
      Idproduits: "",
      checkedA: false,
    };
  }
  componentDidMount() {
    this.props.getproduits();
  }

  handleRegister = () => {
    const data = {
      Firstname: this.props.formData["nom"],
      Lastname: this.props.formData["prenom"],
      Telephone: this.props.formData["telephone"],
      Cin: this.props.formData["cin"],
      Birthday: moment(this.props.formData["naissance"]).format("DD-MM-YYYY"),
      Email: this.props.formData["email"],
      City: this.props.formData["city"],
      Address: this.props.formData["address"],
      Idrecoverymode: this.props.Idrecoverymode,
      Idpaiementmode: this.props.Idpaiementmode,
      Idproduits: this.props.getproducts["ID"],
      typeCard:this.props.cartechoixvalue
    };
    this.props.registration(data);
  };

  toggle = () => {
    this.setState({
      checkedA: !this.state.checkedA
    });
  }


  handleChange = name => event => {
    this.setState({ [name]: event.target.checked });
  };


  render() {
    const { handleSubmit, previousPage, isLoading } = this.props;

    let btnConnfirmer =  ( <button
      className="butonConfirme"
      type="submit"
      onClick={this.handleRegister}
      disabled={!this.state.checkedA}
    >
          Confirmer
        </button> 
      ) 
    if (isLoading) {
      btnConnfirmer = <CircularProgress size={30} />;
    }


    return (
      <div>
        <div className="ImgBack" />
        <div className="formReacpInscri">
          <div className="containerReacpInscri">
            <div id="divLogowithDesc">
              <div className="divLogo"><img style={{ width: "85px" }} src={logo} alt="" /></div>
              <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>
            </div>

            <div>

              <Card className="cardStyleFormOne">
                <form onSubmit={handleSubmit} id="RecapForm" className="RecapformAlign">
                  <div style={{ width: "100%", margin: "0 auto" }}>
                    <p className="titleRecapPage">
                      Récapulatif de votre demande de Carte Fidélité
            </p>
                  </div>
                  <div style={{ width: "100%", paddingTop: "10%" }}>
                    <p
                      style={{
                        fontFamily: "Roboto",
                        color: "grey",
                        fontWeight: "lighter",
                        marginRight: "auto"
                      }}
                    >
                      <span
                        style={{
                          fontFamily: "Roboto",
                          color: "#282c34",
                          fontWeight: "bolder"
                        }}
                      >
                        Livraison à l'adresse:
              </span>
                      {this.props.Idrecoverymode === "21" ? (
                        <span>{this.props.formData["city"]} {this.props.formData["address"]}</span>
                      ) : (
                          <span>Vous séléctionner la boutique {this.props.nameBoutique}</span>
                        )}
                    </p>
                  </div>

                  <div>
                    <p
                      style={{
                        marginRight: "auto",
                        fontFamily: "Roboto",
                        color: "#282c34",
                        fontWeight: "normal"
                      }}
                    >
                      {/* Paiement par Carte Bancaire/ E-Dinar */}
                      {this.props.Idpaiementmode === "18" ? (
                        <span>Par carte bancaire / E-dinar</span>
                      ) : (
                          <span />
                        )}
                      {this.props.Idpaiementmode === "19" ? (
                        <span>Par recharge téléphonique</span>
                      ) : (
                          <span />
                        )}
                      {this.props.Idpaiementmode === "20" ? (
                        <span>A la livraison</span>
                      ) : (
                          <span />
                        )}
                    </p>
                  </div>
                  <div style={{ marginTop: "-5%" }}>
                    <p style={{ marginLeft: "auto", color: "#E02A3F" }}>{this.props.cartechoixtitle}({this.props.cartechoixmontant}DT/{this.props.cartechoixduree})</p>
                  </div>
                  <div>
                    <div className="divPrecNext">
                      {/*<FormControlLabel
                        control={
                          <Checkbox color="default" onClick={this.toggle} value="checkedA"/>
                        }
                        label="Terms et conditions"
                      />*/}
                      <label className="container">Terms et conditions
                        <input type="checkbox" onClick={this.toggle} value="checkedA"/>
                        <span className="checkmark"></span>
                      </label>

                      <div className="RecapNextAndPrev">
                        <button
                          style={{
                            background: "#E31B28",
                            width: "70%",
                            border: "1px solid #E31B28",
                            fontFamily: "Lato",
                            fontSize: "15px",
                            borderRadius: "25px",
                            height:"38px"
                          }}
                          id="buttonpreviosRecap"
                          className="previous"
                          type="submit"
                          onClick={previousPage}
                        >
                          Précédent
                        </button>
                        {/* <button
                          className="butonConfirme"
                          type="submit"
                          onClick={this.handleRegister}
                          disabled={!this.state.checkedA}
                        >
                          Confirmer
                        </button> */}
                        {btnConnfirmer}
                      </div>
                    </div>
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

const mapStateToProps = state => {
  return {
    getproducts: state.getproducts.getproducts,
    registStatus: state.registStatus.registStatus,
    isLoading: state.ui.isLoading,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    getproduits: () => dispatch(getproduits()),
    registration: (
      nom,
      prenom,
      telephone,
      cin,
      naissance,
      email,
      city,
      address,
      Idrecoverymode,
      Idpaiementmode,
      Idproduits,
      typeCard
    ) =>
      dispatch(
        registration(
          nom,
          prenom,
          telephone,
          cin,
          naissance,
          email,
          city,
          address,
          Idrecoverymode,
          Idpaiementmode,
          Idproduits,
          typeCard
        )
      )
  };
};

WizardFormRecap = connect(
  mapStateToProps,
  mapDispatchToProps
)(WizardFormRecap);

export default reduxForm({
  form: "wizard",
  destroyOnUnmount: false,
  //forceUnregisterOnUnmount: true,
  validate
})(WizardFormRecap);
