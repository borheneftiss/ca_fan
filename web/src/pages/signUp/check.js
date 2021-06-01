import React, { Component } from "react";
import ckeck from '../../assets/iconpaiement/check.png'
import Card from '@material-ui/core/Card';
import logo from "../../assets/signUp/logoCA.svg";
import img from "../../bg.png";
import "./check.css";
import FooterInscription from "../../component/footerInscription/footerInscription.js"

class ReqChecked extends Component {
  render() {
    return (
      <div>
      <div className="ImgBack" />
        <div className="formCheckInscri">
            <div className="containerCheck">
                <div id="divLogowithDesc">
                  <div className="divLogo"><img style={{width:"85px"}}  src={logo} alt=""/></div>
                  <div><p className="DescriCarte">une carte de fidélité spécialement destinée aux supporters du club africain</p></div>
                </div>

          <div>
          <Card className="cardStyleFormOne">
              <div className="flex-Check">
                <div className="ImgCheckPos">
                  <img style={{ width: '80px', 'margin-top': '25%' }} src={ckeck} alt="" />
                </div>
                <div style={{paddingBottom:"20px"}}> 
                  <p style={{fontWeight:"bold"}} >Votre demande de la carte fidélité à été envoyée !</p>
                </div>
                <div>
                  <p style={{fontWeight:"unset"}}>Vous serez notifié une fois votre carte est prête ! Merci pour votre attention</p>
                </div>
              </div>
            </Card>

          </div> 

            </div>
        {/* <div>
          <div><img src={caf} alt=""/></div>
          <div style={{ display: "flex", width: "fit-content"}}>
          <div style={{paddingRight: "20px"}}><p style={{ color: "white",fontFamily: "Lato" }}>Club Africain</p></div>
          <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={fb} alt="" /></div>
          <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={instagram} alt="" /></div>
          <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={twitter} alt="" /></div>
        </div>
          </div> */}
          <div className="divFooterInscription">
            <FooterInscription/>
          </div>
        </div>
    </div>
    )
  }
}

export default ReqChecked;