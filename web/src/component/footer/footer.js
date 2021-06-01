import React from "react";
import "./footer.css";
import copyright2 from "../../assets/header/copyright2.png";
import { NavLink } from "react-router-dom";

class Footer extends React.Component {
  render() {
    return (
            <div className="divfooter">
                <div className="footerclass">
                    <div className="divright">
                    <div className="posimgcopy"><img src={copyright2} alt=""/></div>
                    <div><p className="pfooter">2019 ClubAfricain. All rights reserved.</p></div>
                    </div>
                    <div className="divInterm"><p className="pfooterbold">Condition générale d'utilisation</p></div>
                    <div className="divLeft"><p className="pfooterbold">Politique de confidentialitè</p></div>
                    {/*<div className="divLeft"><p className="pfooterbold">Nous Contacter</p></div>*/}
                    <div className="divLeft"><NavLink className="nouscontact" to="/contact" exact={true}><p className="pfooterbold">Contact</p></NavLink></div>
                </div>
              </div>
    );
    }
  }
export default Footer;


