import React from "react";
import "./footerInscription.css";
import caf from "../../assets/bgca/caf.png";
import fb from "../../assets/bgca/fb.png";
import instagram from "../../assets/bgca/instagram.png";
import twitter from "../../assets/bgca/twitter.png";

class FooterInscription extends React.Component {

  render() {
    return (
            <div>
            <div><img src={caf} alt=""/></div>
            <div id="RxSocFooterInscri">
            <div style={{paddingRight: "20px"}}><p style={{ color: "white",fontFamily: "Lato" }}>Club Africain</p></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={fb} alt="" /></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={instagram} alt="" /></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={twitter} alt="" /></div>
            </div>
            </div>
    );
    }
  }
export default FooterInscription;


