import React, { Component } from "react";
import Step from "./step";
import "./points.css";
import 'rc-slider/assets/index.css';
import 'rc-tooltip/assets/bootstrap.css';
import { points } from "../../config/config.js";
import Tooltip from 'rc-tooltip';
import Slider from 'rc-slider'; 
import notValid from "../../assets/profil/notValid.png";
import CircularProgress from "@material-ui/core/CircularProgress";
import {ToastsContainer, ToastsStore} from 'react-toasts';
import histred from "../../assets/mes_points/histred.png";
import convertwhite from "../../assets/mes_points/convertwhite.png";
import donwhite from "../../assets/mes_points/donwhite.png";
import logoCA from "../../assets/mes_points/ball3.png";
import histwhite from "../../assets/mes_points/histwhite.png";
import convertred from "../../assets/mes_points/convertred.png";
import donred from "../../assets/mes_points/donred.png";

import { connect } from "react-redux";
import Footer from "../../component/footer/footer.js";
import Headder from "../../component/Header/header.js";
import history from "../../history";
import { convertirpoints , projectList, paiementModesDon , saveDonation} from "../../store/actions";

class Points extends Component {
    componentDidMount() {

            //test expiration token
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
            var MyDate = new Date();
            var MyDateString;
    
            MyDate.setDate(MyDate.getDate() );
    
            MyDateString = ('0' + MyDate.getDate()).slice(-2) + '/'
                        + ('0' + (MyDate.getMonth()+1)).slice(-2) + '/'
                        + MyDate.getFullYear();      
            this.setState({ dateNow: MyDateString });
            this.props.convertirpoints();
            this.props.projectList();
            this.props.paiementModesDon();

        }
       
    }


    constructor(props) {
        super(props);
        this.state = {
            activeHist: true,
            activeConvert: false,
            activeDon: false,
            dateNow: 0,
            size: '',
            don:'',
            spontaneous: false,
            autres: '',
            value: 1,
            points: 100,
            disable: false,
            nbrDT:'',
            errorpaiementMode:'',
            errormontant :'',
            errorprojectID :'',
            nbrpoints :'',
            click : ''
        }
        this.myRefHist = React.createRef()
        this.myRefConvert = React.createRef()
        this.myRefDon = React.createRef()
        this.handleChange = this.handleChange.bind(this);
        this.handleChangePaiment = this.handleChangePaiment.bind(this);
        this.handleChangeAutres = this.handleChangeAutres.bind(this);
    }
    onSliderChange = (value) => {
        this.setState(() => ({ nbrDT : '' }));
        this.setState({
          value,
        });
      };
    onAfterChange = (value) => {
        var v = value * points
        this.setState({
            points : v
          });
      };
    handleclickHist = (e) => {
        this.setState({
            activeHist: true,
            activeConvert: false,
            activeDon: false,
            click:'history'         
        });
        window.scrollTo(0, this.myRefHist.current.offsetTop)
    }
    handleclickConvert = (e) => {
        this.setState({
            activeHist: false,
            activeConvert: true,
            activeDon: false,
            click:'convert'
        });
        window.scrollTo(0, this.myRefConvert.current.offsetTop)
    }
    handleclickDon = (e) => {
        this.setState({
            activeHist: false,
            activeConvert: false,
            activeDon: true,
            click:'don'             
        });
        window.scrollTo(0, this.myRefDon.current.offsetTop)
    }
    handleMouseEnterHist= (e) => {
        this.setState({
            activeHist: true,
            activeConvert: false,
            activeDon: false
        }); 
    }
    handleMouseEnterConvert= (e) => {
        this.setState({
            activeHist: false,
            activeConvert: true,
            activeDon: false
          
        });
    }
    handleMouseEnterDon= (e) => {
        this.setState({
            activeHist: false,
            activeConvert: false,
            activeDon: true
          
        });
    }
    handleMouseLeave= (e) => {
    if (this.state.click === "history") {
        this.setState({
            activeHist: true,
            activeConvert: false,
            activeDon: false
          
        });
    }
    else if (this.state.click === "convert") {
        this.setState({
            activeHist: false,
            activeConvert: true,
            activeDon: false
          
        });
    }
    else if (this.state.click === "don") {
        this.setState({
            activeHist: false,
            activeConvert: false,
            activeDon: true
          
        });
    }
    }
    handleChange(event) {
        this.setState({
          size: event.target.value
        });
      
            this.setState({
                spontaneous : false
              });
      
      }
    
    handleChangePaiment(event) {
        this.setState({
          don: event.target.value
        });
      }
    spontaneousClick = (e) => {

        this.setState({
            spontaneous: !this.state.spontaneous,
           
        });
        
        if (this.state.spontaneous === false)
        {
            this.setState({
                size: '0'
              });
            
        }
      
    }
    handleChangeAutres(event) {
        if (this.state.autres === "") {
            
            this.setState({
                autres:  event.target.value,
                disable : true,
                points : ''
            });
        }
        else 
        {   
            this.setState({ 
                autres: "" ,
                nbrDT : '',
                disable : false,
                points : this.state.value * points
        });
        }
      }
      onnombre_nbrDTChange = (e) => {
        const nbrDT = (e.target.validity.valid) ? e.target.value : this.state.nbrDT; 
        this.setState(() => ({ nbrDT : nbrDT }));
        this.onAfterChange(nbrDT);
    
      };
 
      saveDon = () => {
        var montant;
     
        if  (this.state.disable === false ) {
            montant = this.state.value
           
        }
        else { 
            montant = this.state.nbrDT
        }
       
        const data = {
            idpaiementmode : this.state.don,
            montant: montant,
            projectType : this.state.size          
        }; 
        if ( (data.montant !== '') && (data.montant !== '0') )
        {
            this.setState(() => ({ errormontant : '' }));  
            if (data.projectType !== '') {
                this.setState(() => ({ errorprojectID : '' }));  
            if (data.idpaiementmode !== '') {
                this.setState(() => ({ errorpaiementMode : '' }));  
                 this.props.saveDonation(data);
            }
                else { 
                    this.setState(() => ({ errorpaiementMode : '  Veuillez sélectionner votre mode de paiement.' })); 
                }
            }
            else{
                this.setState(() => ({ errorprojectID : '  Veuillez sélectionner un don.' })); 
            }

        }else{ 
            this.setState(() => ({ errormontant : '  Veuillez vérifier votre montant.' })); 
        }
        
    
      };
      componentWillReceiveProps(prevProps){
        if(prevProps.datadon !== this.props.datadon){
          if (prevProps.donResult === "success") {
            ToastsStore.info( "Votre don a été effectué avec succèes! ", 3000)
           }
           else if (prevProps.donResult === "fail") {
            ToastsStore.error( "Echec serveur, Veuillez réessayer! ", 3000)
           }
        }
      }
     componentDidUpdate(prevProps) {
        if (prevProps.datauserprofile !== this.props.datauserprofile) {
          this.setState({
            nbrpoints: this.props.datauserprofile.nbpoints,
          });
        }
      } 
    
    render() { 
        const Handle = Slider.Handle;
     
        const handle = (props) => {
          const { value, dragging, index, ...restProps } = props;
          return (
            <Tooltip
              prefixCls="rc-slider-tooltip"
              overlay={value}
              visible={dragging}
              placement="top"
              key={index}
            >
           
              <Handle value={value} {...restProps} />
            </Tooltip>
          );
        };

        const { isLoading } = this.props;

        let btnConfirm =  ( <div className="btnconfirm"  onClick={this.saveDon}>
                                <p>Confirmer votre donation</p>
                            </div>
                            ) 
        if (isLoading) {
            btnConfirm = <CircularProgress size={30} />;
        }

        return (
            <div>
                <Headder/>
                <div className="PointsTxt">
                    <p className="pointsText">Vous avez <span>{this.state.nbrpoints}</span> points</p>
                    <p className="gameText">Plus vous jouez, plus vous gagnez des points</p>            
                    <div className="btnsDiv">
                        <div className="boderBtn">
                            <button 
                                onClick={this.handleclickHist}
                                onMouseEnter={this.handleMouseEnterHist}
                                onMouseLeave={this.handleMouseLeave}
                                
                                className = {this.state.activeHist ? "activeBtn btnPoints" : "NotactiveBtn btnPoints" } 
                            > 
                                <img alt="" src={this.state.activeHist ? histwhite : histred} className="histImg"/>
                                <p>historique des points</p>
                            </button>
                        </div>
                        <div className="boderBtn">
                            <button 
                             onClick={this.handleclickConvert}
                             onMouseEnter={this.handleMouseEnterConvert}
                             onMouseLeave={this.handleMouseLeave}
                             className = {this.state.activeConvert ? "activeBtn btnPoints" : "NotactiveBtn btnPoints" } 
                            > 
                                <img alt="" src={this.state.activeConvert ? convertwhite : convertred}  className="convertImg"/>
                                <p>convertir des points</p>
                            </button>
                        </div>
                        <div className="boderBtn">
                            <button 
                             onClick={this.handleclickDon}
                             onMouseLeave={this.handleMouseLeave}
                             onMouseEnter={this.handleMouseEnterDon}
                             className = {this.state.activeDon ? "activeBtn btnPoints" : "NotactiveBtn btnPoints" } 
                            > 
                                <img alt="" src={this.state.activeDon ? donwhite : donred} className="donImg"/>
                                <p>donnations</p>
                            </button>
                        </div>
                    </div>
                </div>

                {/* historique des points */}
                <div ref={this.myRefHist} className="historiquePoints">
                    <div className="whitebg"></div>
                    <div>
                        <p className="historiqueTextShadow">historique des points</p>
                        <p className="historiqueText">historique des points</p>   
                        <Step />
                    </div>
                </div>

                {/* convertir mes points */}
                 <div id="indentifier" ref={this.myRefConvert} className="convertirPts">
                        <p className="historiqueTextShadow">convertir mes points</p>
                        <p className="historiqueText">convertir mes points</p>   
                        <p className="historiqueTextBold">Au <span>{this.state.dateNow}</span> vous disposez d'un solde de <span>{this.state.nbrpoints}</span> points.</p>
                        <p className="historiqueTextLight ">Grâce à vos points CA acquis, vous pouvez gagner les cadeaux suivants:</p>
                        
                        <div className="gridConvertir">

                        {this.props.datalistconvertpointResult.map(datalistconvertpointResult => (
                            <div className="ColConvertir"  key={datalistconvertpointResult.Gift_title}>
                                <img alt="" src={datalistconvertpointResult["icon"]} style={{width: "40px"}}/>
                                <p className="convertirtxtOne">{datalistconvertpointResult["Gift_title"]}<br/><span className="convertirtxtTwo">{datalistconvertpointResult["points"]} POINTS</span></p>
                            </div>
                        ))}
                        </div>
                </div>

                 {/* Donnation */}
                 <div  ref={this.myRefDon} className="donPts">
                        <p className="historiqueTextShadow">Donations</p>
                        <p className="historiqueText">Donations</p>   
                        <p  className="donTextOne">SOUTENEZ LES ROUGES ET BLANCS EN FAISANT UN DON !</p>
                        <p className="donTextTwo">Le Club Africain a besoin de tout le monde !</p>
                       
                        <p className="donTextThree">CHOISISSEZ LE MONTANT QUE VOUS VOULEZ DONNER, ET CONVERTIR EN POINTS CA FUN.</p>
                        <div className="heat">
                         
                            <p className="pointNB">{this.state.points}</p>
                           
                        </div>
                  
                        <div className="btnpnt">
                            <p style={{ 
                                display : this.state.autres ==='' ? "block" : "none" ,    padding: '7px 4px'
                              }} 
                              className="pointsNB">{this.state.value}</p>
                            <div>
                                <input  style={{ display : this.state.autres ==='' ? "none" : "block" }}  
                                        className="inputDT pointsNB" 
                                        type="text"
                                        value={this.state.nbrDT}
                                        onChange={this.onnombre_nbrDTChange}
                                        pattern="[0-9]{1,6}"
                                     
                                         >
                                   
                                </input>
                            </div>
                            <sup className=" pointsNB" style={{fontSize : "13px"}} >  DT</sup>
                            
                        </div>
                        <div className="SliderStyle">
                            <Slider 
                                min={1} max={50} 
                                dotStyle={{ borderColor: '#e31B28',  backgroundColor:  '#e31B28', bottom: '-1px' , boxShadow: 'unset'}} 
                                activeDotStyle={{ borderColor: '#e31B28' , boxShadow: 'unset'}}
                                handleStyle={{  border: 'unset', 
                                                backgroundImage: `url(${logoCA})` , 
                                                boxShadow: 'unset',
                                                backgroundColor: 'white',
                                                marginLeft: '-9px',
                                                marginTop: '-10px',
                                                width: '22px',
                                                height: '22px' }}
                                railStyle={{ borderColor: '#e31B28', backgroundColor:  '#e31B28', height: '2px'}}
                                trackStyle={{ backgroundColor: 'transparent' }}
                                defaultValue={0}
                                marks={{ 1: '', 5: '', 10: '', 20: '', 50: '' }} 
                                step={null}  
                                handle={handle} 
                                value={this.state.value}
                                onChange={this.onSliderChange}
                                onAfterChange={this.onAfterChange}	
                                disabled={this.state.disable}
                            />
                           
                        </div> 
                        <div>
                                <form  className="Projectform">
                                    <ul>
                                    <li className="Projectlist">
                                            <label style={{ fontWeight: "700", fontSize: "13px"}}>
                                            <input type="radio"  component="input"
                                                value="autres"
                                                
                                                checked={this.state.autres === "autres"}
                                                onClick={this.handleChangeAutres}
                                                
                                                />  
                                           introduire un autre montant 
                                        
                                            </label>
                                        </li>
                                      
                                    </ul>
                                  
                                    </form>
                            
                        </div> 
                        <div className="containerb ">
                            <div    className= { this.state.spontaneous ? "activespontaneous left btndon" : "NotActivespontaneous left btndon" }
                                    onClick={this.spontaneousClick}
                            >
                                <p  id="0" >Don spontané</p>
                            </div>
                            <div  className="btndon right ">
                               
                                            <div className="wrap-collabsible">
                                                <input id="collapsible" className="toggle" type="checkbox"/>
                                                <label htmlFor="collapsible" className="lbl-toggle">Don pour un projet spécifique </label>
                                                <div className="collapsible-content">
                                                    <div className="content-inner">
                                                    <form  className="Projectform">
                                             <ul>
                                            {this.props.dataproject.map(dataproject => (
                                                
                                                <li className="Projectlist" key={dataproject.ID} >
                                                <label style={{ fontWeight: "700", fontSize: "13px"}}>
                                                <input type="radio"  component="input"
                                                    value={dataproject["ID"]}
                                                    id={dataproject["ID"]}
                                                    checked={this.state.size === dataproject["ID"]}
                                                    onChange={this.handleChange}
                                                />  
                                                {dataproject["post_title"]}
                                            
                                                </label>
                                                </li>
                                            ))}
                                            </ul>
                                    
                                        </form>
                                                    </div>
                                                </div>
                                            </div> 
                                        
                                                
                            </div>
                        </div>
                    
                        <div className="transactions">
                        <p className="historiqueTextLight">Choisir le mode de donation et faire la transaction par carte bancaire ou par recharge téléphonique.</p>
                                <form  className="modeform">
                                        <ul>
                                        {this.props.datapaiementDon.map(datapaiement => (
                                            
                                            <li className="Projectlist" key={datapaiement.paimentID} >
                                            <label >
                                                <input type="radio"  component="input"
                                                value={datapaiement["paimentID"]}
                                                id={datapaiement["paimentID"]}
                                                checked={this.state.don === datapaiement["paimentID"]}
                                                onChange={this.handleChangePaiment}
                                                />  {datapaiement["paiment_mode_Tilte"]}
                                            
                                            </label>
                                            </li>
                                        ))}
                                        </ul>
                                        <ToastsContainer store={ToastsStore}/>
                                </form>
                        </div>
                       
                        {btnConfirm}
                        {this.state.errorpaiementMode && <div className="errorDiv"> <img  src={notValid} className="notValid" alt=""/>  <p className="errorStyle">{this.state.errorpaiementMode}</p>  </div> }
                        {this.state.errormontant && <div className="errorDiv"> <img  src={notValid} className="notValid" alt=""/>  <p className="errorStyle">{this.state.errormontant}</p>  </div> }
                        {this.state.errorprojectID && <div className="errorDiv"> <img  src={notValid} className="notValid" alt=""/>  <p className="errorStyle">{this.state.errorprojectID}</p>  </div> }
                    </div>
            <div style={{position:"relative"}}>
                <Footer/>
            </div>
            </div>
        );
    }

}
const mapStateToProps = state => {
    return {
      datauserprofile: state.datauserprofile.datauserprofile,
      listconvertpointResult:state.listconvertpointResult.listconvertpointResult,
      datalistconvertpointResult:state.datalistconvertpointResult.datalistconvertpointResult,
      isLoading: state.ui.isLoading,
      projectResult:state.projectResult.projectResult,
      dataproject:state.dataproject.dataproject,
      donResult:state.donResult.donResult,
      paiementResultDon:state.paiementResultDon.paiementResultDon,
      datadon:state.datadon.datadon,
      datapaiementDon:state.datapaiementDon.datapaiementDon
    };
};
  
  const mapDispatchToProps = dispatch => {
    return {
        convertirpoints:()=>dispatch(convertirpoints()) ,
        projectList:()=>dispatch(projectList()),
        paiementModesDon:()=>dispatch(paiementModesDon()),
        saveDonation:(  idpaiementmode , montant, projectType )=>dispatch(saveDonation(  idpaiementmode , montant, projectType))
      
    };
  };
  
  
  Points = connect(
    mapStateToProps,
    mapDispatchToProps
  )(Points);
export default (Points);