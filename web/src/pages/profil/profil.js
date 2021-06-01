import React from "react";
import "./profil.css";
import Headder from "../../component/Header/header.js";
import TextField from '@material-ui/core/TextField';
import Dropzone from "react-dropzone";
import * as moment from "moment";
import { connect } from "react-redux";
import edit from "../../assets/profil/edit.png";
import notValid from "../../assets/profil/notValid.png";
import InputAdornment from '@material-ui/core/InputAdornment';
import { editprofile,  updateAvatar } from "../../store/actions";
import Footer from "../../component/footer/footer.js"
import CircularProgress from "@material-ui/core/CircularProgress";
import {ToastsContainer, ToastsStore} from 'react-toasts';
import history from "../../history";
import {authentification} from "../../store/actions";

class Profil extends React.Component {
  constructor(props) {
    super(props)
    this.state = {
      firstname: '',
      lastname: '',
      telephone: '',
      card: '',
      birthday: '',
      city: '',
      imageurl:'',
      address: '',
      cin: '',
      email: '',
      pictures: '',
      errorLastname: '',
      errorDate:'',
      errorFirstname:'',
      errorVille:'',
      erroraddress:'',
      errorEmail:'',
      errorValidEmail:'',
      imgprof: "",
      isempty: false,
      editstatustest:"",
      Telephone : "",
      Numero: "",

    }
  }

  onDrop(files) {
    this.setState({
      imgprof: files[0],
      files: files.map(file => ({
        ...file,
        preview: URL.createObjectURL(file)
      })),
      isempty: true
    });  
  }
  componentDidMount() {
    //test Expiration Token
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
      const data = {
        Telephone:
          this.state.telephone,
        Numero:
          this.state.numero,
        token: localStorage.getItem('myToken') 
      }
      this.props.authentification(data);
    }
  }

  /*componentWillReceiveProps(prevProps){
    //if(prevProps.editStatus !== this.props.editStatus){
      if (prevProps.editStatus === true) {
        ToastsStore.info( "Votre profile a été modifié avec succèes! ", 3000)
       }
       else if (prevProps.editStatus === false) {
        ToastsStore.error( "Echec serveur, Veuillez réessayer! ", 3000)
       }
    //}
  }*/


  handleLastname = lastname => event => {
    this.setState({ [lastname]: event.target.value });
  };
  handleFirstname = firstname => event => {
    this.setState({ [firstname]: event.target.value });
  };
  handleBirthday = birthday => event => {
    this.setState({ [birthday]: event.target.value });
  };
  handleCity = city => event => {
    this.setState({ [city]: event.target.value });
  };
  handleAddress = address => event => {
    this.setState({ [address]: event.target.value });
  };
  handleEmail= email => event => {
    
    this.setState({ [email]: event.target.value });
  };

  ModifierProfil = () => {
    if (this.state.lastname) {
      this.setState(() => ({ errorLastname: '' }));
      if (this.state.firstname) { 
        this.setState(() => ({ errorFirstname: '' })); 
        if (this.state.birthday) {
          this.setState(() => ({ errorDate: '' }));
          if (this.state.city) {
            this.setState(() => ({ errorVille: '' }));  
            if (this.state.address) {
              this.setState(() => ({ erroraddress: '' }));  
              if (this.state.email) {
                this.setState(() => ({ errorEmail: '' }));  
                var email = this.state.email;
                var emailRGEX = /^\w+([\\.-]?\w+)*@\w+([\\.-]?\w+)*(\\.\w{2,3})+$/;
                var emailResult = emailRGEX.test(email); 
                if (emailResult === true) {
                  const data = {
                  Id:this.state.idClient,
                  Firstname: this.state.firstname,
                  Lastname: this.state.lastname,
                  Cin: this.state.cin,
                  Birthday: moment(this.state.birthday).format("DD-MM-YYYY"),
                  Email: this.state.email,
                  Address: this.state.address,
                  City: this.state.city,
                }
                this.props.editprofile(data);
                if (this.state.imgprof !== "") {
                  const AvatarUpdate = {
                    file: this.state.imgprof
                  };
                 this.props.onUpdateAvatar(AvatarUpdate);
                }
              } 
            else { 
              this.setState(() => ({ errorEmail: '*Veuillez vérifier votre adresse email.' })); 
            } 
          }
            else { 
            this.setState(() => ({ errorEmail: '*Veuillez vérifier votre adresse email.' })); 
          }
        }
      else { 
      this.setState(() => ({ erroraddress: '*Veuillez vérifier votre adresse.' })); 
    }
      }
      else { 
        this.setState(() => ({ errorVille: '*Veuillez vérifier votre ville.' })); 
      }
    }
      else { 
        this.setState(() => ({ errorDate: '*Veuillez vérifier votre date de naissance.' })); 
      }
    }
    else { 
      this.setState(() => ({ errorFirstname: '*Veuillez vérifier votre prénom.' })); 
    }
  }
    else { 
      this.setState(() => ({ errorLastname: '*Veuillez vérifier votre nom de famille.' })); 
    }
  }

componentDidUpdate(prevProps) {
  if (prevProps.datauserprofile !== this.props.datauserprofile) {
    this.setState({
      idClient: this.props.datauserprofile.idclient,
      imageurl: this.props.datauserprofile.imageurl,
      firstname: this.props.datauserprofile.firstname,
      lastname: this.props.datauserprofile.lastname,
      telephone: this.props.datauserprofile.telephone,
      card: this.props.datauserprofile.cardID,
      birthday: this.props.datauserprofile.birthday,
      city: this.props.datauserprofile.city,
      address: this.props.datauserprofile.address,
      cin: this.props.datauserprofile.cin,
      email: this.props.datauserprofile.email,
      editstatustest: this.props.editStatus,
    });
  }
}
  render() {
  const { isLoading } = this.props;

   let btnValidate =  ( <div className="btnValider" onClick={this.ModifierProfil}>
                          <p>Valider</p>
                        </div> ) 
    if (isLoading) {
      btnValidate = <CircularProgress size={30} />;
    }
    return (
      <div>
          <Headder/> 
           <div className="profilDiv">
        
        <section>
          <div id="profilimg" className="dropzone">
            <Dropzone
              accept="image/jpeg, image/png"
              style={{  width: 200, height: 200, margin : "0 auto" }}
              onDrop={this.onDrop.bind(this)}
              className="dropzoneon"
            >
              {this.state.isempty ? (
                <div>
                  {this.state.files.map(file => (
                    <div>
                      <div>
                        <img
                          src={file.preview}
                          style={{  width: 200, height: 200 }}
                          alt=""
                          className="image"
                        />
                      </div>
                    </div>
                  ))}
                </div>
              ) : (
                <img
                  src={this.state.imageurl}
                  className="image"
                  style={{  width: 200, height: 200}}
                  alt=""
                />
              )} 
            </Dropzone>
            <div className="middle">
              <div className="texter">Choisir nouvelle image</div>
            </div>
          </div>



        </section>

      <p className="nameProfil">{this.state.lastname} {this.state.firstname}</p>
      <div className="inputContent" >
        <TextField  
          label="Nom :"
          className=""
          value={this.state.lastname}
          onChange={this.handleLastname('lastname')}
          InputLabelProps={{
            shrink: true,
          }}
          InputProps={{
            
            endAdornment: (
              <InputAdornment position="end">
                <img  src={ this.state.errorLastname === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }}
        />
         {this.state.errorLastname && <p style={{ color: 'red' }}>{this.state.errorLastname}</p> }
        <TextField
          label="Prénom :"
          
          className=""
          value={this.state.firstname}
          onChange={this.handleFirstname('firstname')}
          InputLabelProps={{
            shrink: true,
          }}
          InputProps={{
            endAdornment: (
              <InputAdornment position="end">
                <img src={ this.state.errorFirstname === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }}
        />
           {this.state.errorFirstname && <p style={{ color: 'red' }}>{this.state.errorFirstname}</p>}
        <TextField
        
          disabled
          label="Cin :"
          className=""
          value={this.state.cin}
        />
        <TextField
          id="date"
          label="Date de naissance :"
          type="date"
          value={this.state.birthday}
          onChange={this.handleBirthday('birthday')}
          InputLabelProps={{
            shrink: true,
          }}
        
          InputProps={{
            max:"2015-12-31",
            endAdornment: (
              <InputAdornment position="end">
                <img src={ this.state.errorDate === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }} />

       {this.state.errorDate && <p style={{ color: 'red' }}>{this.state.errorDate}</p>}
        <TextField
          label="Numéro de téléphone :"
          className=""
          disabled
          value={this.state.telephone}
         
        />
        <TextField
          label="Numéro de la carte :"
          className=""
          disabled
          value={this.state.card}
        />
        <TextField
          className=""
          label="Ville :"
          value={this.state.city}
          onChange={this.handleCity('city')}
          InputLabelProps={{
            shrink: true,
          }}
          InputProps={{
            endAdornment: (
              <InputAdornment position="end">
               <img src={ this.state.errorVille === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }}
        />
         {this.state.errorVille && <p style={{ color: 'red' }}>{this.state.errorVille}</p>}
          <TextField
          className=""
          label="Adresse :"
          value={this.state.address}
          onChange={this.handleAddress('address')}
          InputLabelProps={{
            shrink: true,
          }}
          InputProps={{
            endAdornment: (
              <InputAdornment position="end">
               <img src={ this.state.erroraddress === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }}
        />
        {this.state.erroraddress && <p style={{ color: 'red' }}>{this.state.erroraddress}</p>}
        <TextField
          label="Email :"
    
          value={this.state.email}
          onChange={this.handleEmail('email')}
          InputLabelProps={{
            shrink: true,
          }}
          InputProps={{
            endAdornment: (
              <InputAdornment position="end">
                <img src={ this.state.errorEmail === "" ? edit : notValid } style={{width: "20px"}} alt=""/>
              </InputAdornment>
            )
          }}
        
        />
        {this.state.errorEmail && <p style={{ color: 'red' }}>{this.state.errorEmail}</p>} 

        
      </div>
      <ToastsContainer store={ToastsStore}/>
      {btnValidate}
     
     
    </div> }
           
          <div style={{position:"relative"}}>
          <Footer/>
          </div>
      </div>
      
    );
    }
  }


  
  const mapStateToProps = state => {
    return {
      editStatus: state.editStatus.editStatus,
      isLoading: state.ui.isLoading,
      datauser: state.datauser.datauser,
      datauserprofile: state.datauserprofile.datauserprofile
    };
  };
  const mapDispatchToProps = dispatch => {
    return {
      editprofile: (ID, Firstname, Lastname, Cin, Birthday, Email, Address, City) => dispatch(editprofile(ID, Firstname, Lastname, Cin, Birthday, Email, Address, City)),
      onUpdateAvatar: AvatarUpdate => dispatch(updateAvatar(AvatarUpdate)),
      authentification: (telephone, numero, token) => dispatch(authentification(telephone, numero, token))
    };
  };
  

  
  Profil = connect(
    mapStateToProps,
    mapDispatchToProps
  )(Profil);


export default Profil;