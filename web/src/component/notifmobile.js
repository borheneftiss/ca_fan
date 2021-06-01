import React from "react";
import Button from '@material-ui/core/Button';
import ClickAwayListener from '@material-ui/core/ClickAwayListener';
import Grow from '@material-ui/core/Grow';
import Paper from '@material-ui/core/Paper';
import Popper from '@material-ui/core/Popper';
import MenuList from '@material-ui/core/MenuList';
import "./Header/header.css"

class NotifMobile extends React.Component {
    constructor(props) {
        super(props);
        this.state = {
          open: false,
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
  render() {
    const { open } = this.state;
    return (
<div>
<Button
            buttonRef={node => {
              this.anchorEl = node;
            }}
            aria-owns={open ? 'menu-list-grow' : undefined}
            aria-haspopup="true"
            onClick={this.handleToggle}
          >
            <a  className="button-badge">
                  <i className="fas fa-bell"></i>
                    <span className="badge alert"><p style={{margin: "2px 0"}}>1</p></span>
                  </a>
          </Button>
          <Popper open={open} anchorEl={this.anchorEl} transition disablePortal>
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
                          <div style={{paddingLeft: "42px"}}>
                            <p className="notifStyle">Notifications</p>
                          </div>
                          <div className="newnotif">
                            <p style={{color:"white", fontFamily:"Lato"}}>2 Nouveaux</p>
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
</div>
    );
    }
  }
export default NotifMobile;