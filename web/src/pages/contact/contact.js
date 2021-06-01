import React from "react";
import "./contact.css"
import Headder from "../../component/Header/header.js";
import PropTypes from 'prop-types';
import { withStyles } from '@material-ui/core/styles';
import TextField from '@material-ui/core/TextField';
import Footer from "../../component/footer/footer.js";
import { contacterNous } from "../../store/actions";
import { connect } from "react-redux";
import CircularProgress from "@material-ui/core/CircularProgress";
import {ToastsContainer, ToastsStore} from 'react-toasts';
import history from "../../history";

const styles = theme => ({
  container: {
    display: 'flex',
    flexWrap: 'wrap',
  },
  textField: {
    marginLeft: theme.spacing.unit,
    marginRight: theme.spacing.unit,
  },
  dense: {
    marginTop: 16,
  },
  menu: {
    width: 200,
  },
});
class Contact extends React.Component {
  state = {
    multiline: 'Controlled',
    errorEmail: '',
    email: '',
    object:'',
    message:'',
    errorObject:'',
    errorMessage:''
  };
  handleEmail = email => event => {
    this.setState({ [email]: event.target.value });
  };

  handleObject = object => event => {
    this.setState({
      [object]: event.target.value,
    });
  };

  handleMessage = message => event => {
    this.setState({
      [message]: event.target.value,
    });
  };

  EnvoyerContact = () => {
      const data = {
        token:localStorage.getItem("myToken"),
        object: this.state.object,
        message: this.state.message,
      }
      this.props.contacterNous(data)
  }

  componentDidMount() {
    var tokendateexpir = localStorage.getItem("tokendateexpir");
    var date = new Date(tokendateexpir * 1000);

    var now = Math.floor(new Date() / 1000);
    var datenow = new Date(now * 1000);

    if (datenow > date) {
        console.log("now > date");
        history.push("/authentification");
        localStorage.setItem("myToken", "");
    }
    else {
    }
}
  
  componentWillReceiveProps(prevProps){ 
    if(prevProps.Datasendcontact !== this.props.Datasendcontact){
      if (prevProps.Resultsendcontact === "success") {
        ToastsStore.info( "Votre message a été envoyé avec succèes ! ", 3000)
       }else if (prevProps.Resultsendcontact === "fail") {
        ToastsStore.error( "Echec serveur, Veuillez réessayer ! ", 3000)
       }
    }
  }

  render() {  
    const { isLoading } = this.props;
    const { classes } = this.props;

     let btnEnvoyerContact =  (
      <button className="btnEnvoiContact" onClick={this.EnvoyerContact} 
      disabled={this.state.object==="" || this.state.message===""}
      >
        <p>Envoyer</p>
      </button> 
     ) 
    if (isLoading) {
       btnEnvoyerContact = <CircularProgress size={30} />;
    }
    return (
      <div>
        <Headder />
        <div className="contactDiv">
          <p className="nouscontat">contacter nous</p>
          <TextField
            id="outlined-bare"
            label=" Objet"
            onChange={this.handleObject('object')}
            className={classes.textField}
            value={this.state.object}
            margin="normal"
            variant="outlined"
            fullWidth={true}
            required
          />
          {this.state.errorObject && <p style={{ color: 'red' }}>{this.state.errorObject}</p>}
          <TextField
            id="outlined-bare"
            label=" Message"
            value={this.state.message}
            onChange={this.handleMessage('message')}
            className={classes.textField}
            margin="normal"
            variant="outlined"
            fullWidth={true}
            multiline
            required
            rows="6"
          />
          {this.state.errorMessage && <p style={{ color: 'red' }}>{this.state.errorMessage}</p>}
          <ToastsContainer store={ToastsStore}/>
          <div style={{textAlign:"center"}}>
            {btnEnvoyerContact}
          </div>
        </div>
        <div className="footercontactpage"><Footer /></div>
      </div>
    );
  }
}


const mapStateToProps = state => {
  return {
    Resultsendcontact: state.Resultsendcontact.Resultsendcontact,
    Errorsendcontact: state.Errorsendcontact.Errorsendcontact,
    Datasendcontact: state.Datasendcontact.Datasendcontact,
    isLoading: state.ui.isLoading,
  };
};

const mapDispatchToProps = dispatch => {
  return {
    contacterNous: (token, objet, message)=>dispatch(contacterNous(token, objet, message))
  };
};


Contact = connect(
  mapStateToProps,
  mapDispatchToProps
)(Contact);

Contact.propTypes = {
  classes: PropTypes.object.isRequired,
};

export default withStyles(styles)(Contact);