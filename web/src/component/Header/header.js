import React from "react";
import logo from "../../assets/signUp/logoCA.svg"
import instagramwhite from "../../assets/header/instagramwhite.png"
import twitterwhite from "../../assets/header/twitterwhite.png";
import fbwhite from "../../assets/header/fbwhite.png";
import instagramrouge from "../../assets/header/instagramrouge.png"
import twitterrouge from "../../assets/header/tweeterrouge.png";
import fbrouge from "../../assets/header/fbrouge.png";
import { NavLink, Link } from "react-router-dom";
import "./header.css";
import { connect } from "react-redux";
import BurgerIcon from "../MenuMobile/BurgerIcon";
import Popup from "reactjs-popup";
import son from "../../assets/quiz/header/soundon.png";
import logout from "../../assets/header/logout2.png";
import FooterInscription from "../footerInscription/footerInscription.js"
import history from "../../history";
import Button from '@material-ui/core/Button';
import ClickAwayListener from '@material-ui/core/ClickAwayListener';
import Grow from '@material-ui/core/Grow';
import Paper from '@material-ui/core/Paper';
import Popper from '@material-ui/core/Popper';
import MenuList from '@material-ui/core/MenuList';
import NotifMobile from "../notifmobile.js";
import { authentification } from "../../store/actions";

const contentStyle = {
  background: "rgba(255,255,255,0)",
  width: "80%",
  border: "none"
};

class Headder extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      datasucces: [],
      pathpage: "",
      Telephone: "",
      Numero: "",
      firstname: "",
      anchorEl: null,
      open: false,
      open1: false,
    }
  }


  handleToggle = () => {
    this.setState(state => ({ open: !state.open }));
  };

  handleClose = event => {
    if (this.anchorEl.contains(event.target)) {
      return;
    }

    this.setState({ open: false });
  };




  async componentWillReceiveProps(nextProps) {
    await this.setState({ datasucces: this.props.datauser });
  }

  componentDidMount() {
    this.setState({ pathpage: window.location.pathname })
    if (localStorage.getItem('myToken') !== "") {
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

  componentDidUpdate(prevProps) {
    if (prevProps.datauserprofile !== this.props.datauserprofile) {
      this.setState({
        firstname: this.props.datauserprofile.firstname,
      });
    }
  }

  logoutClick = () => {
    history.push("");
  }

  render() {
    const { open } = this.state;
    return (
      <div>
        {/*menu pour la page quiz*/}

        {(window.location.pathname === "/quiz" || window.location.pathname === "/startquiz" || window.location.pathname === "/responses") ? (
          <div className="divMenuquiz">
            <Link to="/challenges" className="divcaf" >
              <div className="logocaposition"><img src={logo} alt="" /></div>
              <p className="cafarabrouge">الإفريقي_تعيش#</p>
              <div className="divResauxSociauxrouge">
                <p className="Headertxt">Club Africain</p>
                <div className="ResauxSociauxPos"><img src={fbrouge} alt="" /></div>
                <div className="ResauxSociauxPos"><img src={instagramrouge} alt="" /></div>
                <div className="ResauxSociauxPos"><img src={twitterrouge} alt="" /></div>
              </div>
            </Link>
            {/*Div Menuuuuuuu */}
            <div className="divmenu">
              <NavLink to="/media" className="itemMenudiff" exact={true}>médias</NavLink>
              <NavLink to="/challenges" className="itemMenudiff" exact={true}>challenges</NavLink>
              <NavLink to="/points" className="itemMenudiff" exact={true}>points</NavLink>
              <NavLink to="/partenaires" className="itemMenudiff" exact={true}>partenaires</NavLink>
              <NavLink to="/profile" className="itemMenudiff" exact={true}>{this.state.firstname}</NavLink>
            </div>
          </div>
        )
          :
          (
            <div className="Back">
              {/*Div Logo Avec les Résaux Sociaux */}
              <div style={{ marginLeft: "20px", display: "flex" }}>
                <Link to="/challenges" className="divcaf">
                  <div className="logocaposition"><img src={logo} alt="" /></div>
                  <p className="cafarab">الإفريقي_تعيش#</p>
                  <div className="divResauxSociaux">
                    <div><p className="clubStyle">Club Africain</p></div>
                    <div className="ResauxSociauxPos"><img src={fbwhite} alt="" /></div>
                    <div className="ResauxSociauxPos"><img src={instagramwhite} alt="" /></div>
                    <div className="ResauxSociauxPos"><img src={twitterwhite} alt="" /></div>
                  </div>
                </Link>
                <div className="divmenu">
                  <NavLink to="/media" className="itemMenu" exact={true}>médias</NavLink>
                  <NavLink to="/challenges" className="itemMenu" exact={true}>challenges</NavLink>
                  <NavLink to="/points" className="itemMenu" exact={true}>points</NavLink>
                  <NavLink to="/partenaires" className="itemMenu" exact={true}>partenaires</NavLink>
                  <NavLink to="/profile" className="itemMenu" exact={true}>{this.state.firstname}</NavLink>

                  {/* <NotifMobile/> */}
                  <Button
                    buttonRef={node => {
                      this.anchorEl = node;
                    }}
                    aria-owns={open ? 'menu-list-grow' : undefined}
                    aria-haspopup="true"
                    onClick={this.handleToggle}
                  >
                    <a className="button-badge">
                      <i className="fas fa-bell"></i>
                      <span className="badge alert"><p style={{ margin: "2px 0" }}>1</p></span>
                    </a>
                  </Button>
                  <Popper open={open} anchorEl={this.anchorEl} transition disablePortal style={{ zIndex: "1" }}>
                    {({ TransitionProps, placement }) => (
                      <Grow
                        {...TransitionProps}
                        id="menu-list-grow"
                        style={{ transformOrigin: placement === 'bottom' ? 'center top' : 'center bottom' }}
                      >
                        <Paper>
                          <ClickAwayListener onClickAway={this.handleClose}>
                            <MenuList>
                              <div className="notiftext">
                                <div className="Notifborder">
                                  <div style={{ paddingLeft: "42px" }}>
                                    <p className="notifStyle">Notifications</p>
                                  </div>
                                  <div className="newnotif">
                                    <p style={{ color: "white", fontFamily: "Lato" }}>2 Nouveaux</p>
                                  </div>
                                </div>
                                <div className="contenuNotif"><p className="paragNotif">Découvrir notre nouveau jeu, Plus vous jouez, plus vous ganger des points !</p></div>
                                <div className="contenuNotif"><p className="paragNotif">Consulter notre catalogue des Cadeaux et convertir vos points.</p></div>
                                <div className="contenuNotif"><p className="NotifNewJeux">Un nouveau jeux PHOTOS CHALLENGE et maintenat disponible.</p></div>
                              </div>
                            </MenuList>
                          </ClickAwayListener>
                        </Paper>
                      </Grow>
                    )}
                  </Popper>
                  <img alt="" className="LogoutStyle" src={logout} onClick={this.logoutClick} />
                </div>
              </div>
            </div>
          )
        }

        {/*menu Mobile*/}
        {(window.location.pathname === "/points" || window.location.pathname === "/quiz") ? (
          <div className="backgroundheadwhite" id="whithoutheader">
            {(window.location.pathname === "/quiz") ? (<div><img alt="" src={son} className="imgson" /></div>) : (<div></div>)}
            <Popup
              modal
              overlayStyle={{ background: "linear-gradient(to right, #E31B28 , #86030D)" }}
              contentStyle={contentStyle}
              closeOnDocumentClick={false}
              trigger={open =>
                <BurgerIcon open={open} />
              }
            >
              <div className="positionmenumobile">
                <NavLink to="/profile" className="itemMenuMobile" exact={true}>{this.state.firstname}</NavLink>
                <NavLink to="/media" className="itemMenuMobile" exact={true}>Médias</NavLink>
                <NavLink to="/challenges" className="itemMenuMobile" exact={true}>challenges</NavLink>
                <NavLink to="/points" className="itemMenuMobile" exact={true}>points</NavLink>
                <NavLink to="/partenaires" className="itemMenuMobile" exact={true}>partenaires</NavLink>
                <NavLink to="/points" className="itemMenuMobile" exact={true}>Paramétres</NavLink>
                <NavLink to="/authentification" className="itemMenuMobile" exact={true} onClick={this.logoutClick}>Déconnexion</NavLink>
              </div>
              <div className="footermobileweb">
                <FooterInscription />
              </div>
            </Popup>
          </div>) : (
            <div className="backgroundhead">
              <div className="pagecourante">
                <p className="stylepagecourante">{window.location.pathname.split('/')}</p>


                <div className="iconNotifMobile">
                  <NotifMobile />
                </div>


              </div>
              <Popup
                modal
                overlayStyle={{ background: "linear-gradient(to right, #E31B28 , #86030D)" }}
                contentStyle={contentStyle}
                closeOnDocumentClick={false}
                trigger={open =>
                  <BurgerIcon open={open} />
                }
              >
                <div className="positionmenumobile">
                  <NavLink to="/profile" className="itemMenuMobile" exact={true}>{this.state.firstname}</NavLink>
                  <NavLink to="/media" className="itemMenuMobile" exact={true}>Médias</NavLink>
                  <NavLink to="/challenges" className="itemMenuMobile" exact={true}>challenges</NavLink>
                  <NavLink to="/points" className="itemMenuMobile" exact={true}>points</NavLink>
                  <NavLink to="/partenaires" className="itemMenuMobile" exact={true}>partenaires</NavLink>
                  <NavLink to="" className="itemMenuMobile" exact={true}>Paramétres</NavLink>
                  <NavLink to="/authentification" className="itemMenuMobile" exact={true} onClick={this.logoutClick}>Déconnexion</NavLink>
                </div>
                <div className="footermobileweb">
                  <FooterInscription />
                </div>
              </Popup>
            </div>
          )}
      </div>
    )
  }
}

const mapStateToProps = state => {
  return {
    datauser: state.datauser.datauser,
    datauserprofile: state.datauserprofile.datauserprofile
  };
};

const mapDispatchToProps = dispatch => {
  return {
    authentification: (telephone, numero, token) => dispatch(authentification(telephone, numero, token))
  };
};


Headder = connect(
  mapStateToProps,
  mapDispatchToProps
)(Headder);
export default (Headder);
