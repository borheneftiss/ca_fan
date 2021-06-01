import React from "react";
import { reduxForm, Field } from "redux-form";
import validate from "../../utils/validate";
import Card from "@material-ui/core/Card";
import { connect } from "react-redux";
import "./WizardFormThirdPage.css";
import FormControl from '@material-ui/core/FormControl';
import Select from '@material-ui/core/Select';
import MenuItem from '@material-ui/core/MenuItem';
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js"


class WizardFormThirdPage extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      telephone: "",
      page: 1,
      formData: "",
      codefinal: "",
      isLoading: "true",
      Idpaiementmode: this.props.Idpaiementmode,
      Idrecoverymode: this.props.Idrecoverymode,
      address: "",
      boutique: '',
      numOne: "",
      numTwo: "",
      numThree: "",
      numFor: "",
      nameBoutique: "",
    };
    this.handleTabChangePayement = this.handleTabChangePayement.bind(this);
    this.handleTabChangeRecovery = this.handleTabChangeRecovery.bind(this);
  }

  handleTabChangePayement(event) {
    this.setState({ Idpaiementmode: event.target.id });
  }

  handleTabChangeRecovery(event) {
    this.setState({ Idrecoverymode: event.target.id, address: this.props.formData["address"] });
  }
  someFn = () => {
    this.props.callbackFromParent(
      this.state.Idrecoverymode,
      this.state.Idpaiementmode,
      this.state.nameBoutique
    );
  };

  handleChangeListBoutique = event => {
    this.setState({ [event.target.name]: event.target.value });
    this.setState({ nameBoutique: event.target.value });
  };


  render() {
    /*console.log("boutiqueeeeeeeee",this.state.nameBoutique)
    console.log(this.state.boutique)
    console.log("idddddddddddddddd",this.state.Idrecoverymode)
    console.log("idddddddddddddddd",Idrecoverymode)
*/
    const Idrecoverymode = this.state.Idrecoverymode;
    let Selectboutique;
    if (Idrecoverymode === "22") {
      Selectboutique =
        <form autoComplete="off">
          <FormControl style={{ width: "100%" }}>
            <Select
              value={this.state.boutique}
              onChange={this.handleChangeListBoutique}
              inputProps={{
                name: 'boutique',
                id: 'age-simple',
              }}
            >
              <MenuItem value="BOUTIQUE 1" >Boutique 1</MenuItem>
              <MenuItem value="BOUTIQUE 2">Boutique 2</MenuItem>
              <MenuItem value="BOUTIQUE 3">Boutique 3</MenuItem>
            </Select>
          </FormControl>
        </form>;

    } else {
      Selectboutique = <p></p>;
    }
  /*  console.log(this.state.address)
    console.log("formDataaaaaaaaa", this.props.formData)
    console.log("zzzzzzzzzzzzzz", this.state.Idrecoverymode)
    console.log(
      "hhhhhhhhhhhh",
      this.props.callbackFromParent(
        this.state.Idrecoverymode,
        this.state.Idpaiementmode
      )
    ); */
    const { handleSubmit, previousPage } = this.props;
    /*console.log(this.props.formData);
    console.log(this.state.Idrecoverymode)
    console.log(this.state.Idpaiementmode)
    console.log(this.props.testcovery.data)*/
    return (
      <div>
        <div className="ImgBack" />
        <div className="formThirdInscri">
          <div className="containerLikeThriForm">
            <div id="divLogowithDesc">
              <div className="divLogo"><img style={{ width: "85px" }} src={logo} alt="" /></div>
              <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>
            </div>

            <div>
              <Card className="cartethirdFormInscri">
                <form onSubmit={handleSubmit} className="FormulaireTrois">
                  <div className="flex-containerthird">
                    <div>
                      <div className="flex-containerIntern">
                        <div id="circle">
                          <img
                            style={{ width: "40px" }}
                            src={this.props.testcovery.imgcat}
                            alt=""
                          />
                        </div>
                        <div>
                          <p className="ptitleThird">{this.props.testcovery.nomcat}</p>
                          <p className="psoustitle">
                            Sélectionner votre mode de récupération
                          </p>
                        </div>
                        <div>
                          <div id="group1" className="positionRadioMode">
                            <form> 
                              {/* {this.props.testcovery.data.map(testcovery => (
                                <div className="radio-item">
                                  <input type="radio" name={testcovery["status"]} status={testcovery["status"]}
                                    id={testcovery["ID"]}
                                    onChange={this.handleTabChangeRecovery}/>
                                  <label for={testcovery["ID"]}>{testcovery["titre"]}</label>
                                </div>
                              ))} */}

                            {this.props.testcovery.data.map(testcovery => (
                              <label className="labelStyle" style={{ color: "#393939", fontWeight: "bold", fontSize: "15px" }}>
                                    <Field type="radio" component="input" name="group1" status={testcovery["status"]}
                                      for={testcovery["ID"]} id={testcovery["ID"]} value={testcovery["titre"]}
                                      onChange={this.handleTabChangeRecovery}
                                    
                                    />{' '}
                                    {testcovery["titre"]}<br/>
                              </label>
                              ))}
                              {Selectboutique}
                            </form>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div>
                      <div className="flex-containerIntern">
                        <div id="circle">
                          <img
                            style={{ width: "40px" }}
                            src={this.props.paiementmodes.imgcat}
                            alt=""
                          />
                        </div>
                        <div>
                          <p
                            style={{
                              color: "#393939",
                              fontFamily: "Roboto",
                              fontSize: "20px",
                              fontWeight: "bold"
                            }}
                          >
                            {this.props.paiementmodes.nomcat}
                          </p>
                          <p
                            className="psoustitlePaiement"
                          >
                            Sélectionner votre mode de paiement
                          </p>
                        </div>
                        <div>
                          <div style={{ position: "absolute", marginLeft: "auto" }}>
                            <div id="group2" className="positionRadioMode">
                              <form>
                                {/* {this.props.paiementmodes.data.map(paiementmodes => (
                                  <div className="radio-item">
                                    <input type="radio" name={paiementmodes["status"]} status={paiementmodes["status"]}
                                      id={paiementmodes["ID"]}
                                      onChange={this.handleTabChangePayement}/>
                                    <label for={paiementmodes["ID"]}>{paiementmodes["titre"]}</label>
                                  </div>
                                ))} */}

                            {this.props.paiementmodes.data.map(paiementmodes => (
                                <label className="labelStyle" style={{ color: "#393939", fontWeight: "bold", fontSize: "15px" }}>
                                      <Field type="radio" component="input" status={paiementmodes["status"]}
                                        for={paiementmodes["ID"]} id={paiementmodes["ID"]} value={paiementmodes["titre"]}
                                        onChange={this.handleTabChangePayement} name="group2"
                                      // name={paiementmodes["status"]}
                                      />{' '}
                                      {paiementmodes["titre"]}<br/>
                                </label>
                                  ))}
                              </form>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div className="divButtonPrevAndNext">
                    <button
                      style={{
                        background: "#E31B28",
                        width: "30%",
                        border: "1px solid #E31B28",
                        borderRadius: "25px",
                        fontFamily: "Lato",
                        fontSize: "15px",
                        marginRight: "100px",
                        height: "38px",
                        alignSelf: "flex-end",
                        margin: "0 auto"
                      }}
                      id="buttonprevios"
                      className="previous"
                      type="submit"
                      onClick={previousPage}
                    >
                      Précédent
                  </button>
                    <button
                      className="ButtonThirdForm"
                      type="submit"
                      onClick={this.someFn}
                      disabled={
                        this.state.Idrecoverymode === "" ||
                        this.state.Idpaiementmode === "" ||
                        (this.state.Idrecoverymode === "22" && this.state.nameBoutique === "")
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
    );
  }
}
WizardFormThirdPage = connect()(WizardFormThirdPage);
export default reduxForm({
  form: "wizard",
  destroyOnUnmount: false,
  //forceUnregisterOnUnmount: true,
  validate
})(WizardFormThirdPage);
