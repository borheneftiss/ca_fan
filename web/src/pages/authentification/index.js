import React, { Component } from "react";
import Card from "@material-ui/core/Card";
import TextField from "@material-ui/core/TextField";
import { withStyles } from "@material-ui/core/styles";
import PropTypes from "prop-types";
import Button from '@material-ui/core/Button';
import { connect } from "react-redux";
import { authentification } from "../../store/actions";
import "./authentification.css"
import logo from "../../assets/signUp/logoCA.svg";
import FooterInscription from "../../component/footerInscription/footerInscription.js"
import CircularProgress from "@material-ui/core/CircularProgress";

const
  styles = theme => ({
    textField: {
      marginLeft: theme.spacing.unit,
      marginRight: theme.spacing.unit,
      width:
        "90%"
    }
  });

class Auth extends Component {
  constructor(props) {
    super(props);
    this.state = {
      telephone:"",
      numero: "",
      token:"",
      spannotif: true
    };
    this.handleChange1 =
      this.handleChange1.bind(this);
    this.handleChange2 =
      this.handleChange2.bind(this);
}

  handleChange1(event) {
   this.setState({
      telephone: event.target.value
    });
  }
  handleChange2(event) {

    this.setState({
      numero: event.target.value
    });
  }

  handleAuthentif = ()=> {
    const data = {
      Telephone:
        this.state.telephone,
      Numero:
        this.state.numero,
      token:
        this.state.token
    }

    this.props.authentification(data);
  };

  componentWillReceiveProps(prevProps) {
    if (prevProps.isAuthentif !== this.props.isAuthentif) {
      if (prevProps.isAuthentif ==="fail" || prevProps.isAuthentif === "notexist") {
        this.setState({
          spannotif: false
        });
      }
    }
  }
  render() {
    const { isLoading } = this.props;
    let btnConnecte =  ( <Button 
       className="btnConnecter"
       variant="outlined"
       color="secondary"
       disabled={this.state.telephone === "" || this.state.numero === ""}
       onClick={this.handleAuthentif}>
         Connecter
      </Button> 
    ) 
if (isLoading) {
  btnConnecte = <CircularProgress size={30} />;
}


    const { classes } = this.props;
    return (

      <div>

        <div className="ImgBack"
        />

        <div className="FormAuthentif">

          <div className="containerAuthentif">

            <div id="divLogowithDesc">

              <div className="divLogo"><img style={{
                width:
                  "85px"
              }} src={logo} alt=""
              /></div>

              <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>

            </div>



            <div>

              <Card className="cardAuthStyle">

                <div style={{
                  margin: "0 auto",
                  width: "63%"
                }}>

                  <h2 className="titleAuthPage">Connexion</h2>

                  <span>

                    { ((this.props.isAuthentif ===
                      "fail" ||
                      this.props.isAuthentif ===
                      "notexist") && (this.state.spannotif === false))
                      ? (
                        <span style={{
                          color: "red",
                          fontFamily: "Roboto",
                          fontSize: "12px"
                        }}>
                        
                          Ce user n'existe pas essayer autrement!!
                        </span>
                      ) : (<span></span>)}
                  </span>
                </div>
                <div style={{
                  margin: "0px auto"
                }}>

                  <div>

                    <TextField

                      id="telephone"

                      label="Téléphone"

                      className={classes.textField}

                      type="text"

                      autoComplete="current-password"

                      margin="normal"

                      onChange={this.handleChange1}

                    />

                  </div>
                  <div>

                    <TextField

                      id="numero"

                      label="Numéro"
                      className={classes.textField}

                      type="text"

                      autoComplete="current-password"

                      margin="normal"

                      onChange={this.handleChange2}

                    />

                  </div>
                  <div className="buttonConnexionpos">

                    {btnConnecte}

                  </div>

                </div>

              </Card>

            </div>



          </div>

          <div className="divFooterInscription">

            <FooterInscription
            />

          </div>

        </div>

      </div>

    );

  }

}

const mapStateToProps = state => {
    return {
      isAuthentif: state.isAuthentif.isAuthentif,
      datauser: state.datauser.datauser,
      isLoading: state.ui.isLoading,
    };
  };

const mapDispatchToProps = dispatch => {
    return {
      authentification: (telephone, numero, token)=>dispatch(authentification(telephone, numero, token))
    };
  };

Auth.propTypes = {
  classes: PropTypes.object.isRequired
};

Auth = connect(
  mapStateToProps,
  mapDispatchToProps
)(Auth);

export default withStyles(styles)(Auth);
