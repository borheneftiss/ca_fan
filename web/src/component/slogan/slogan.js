import React from "react";
import "./slogan.css";
import caf from "../../assets/bgca/caf.png";
import fb from "../../assets/bgca/fb.png";
import instagram from "../../assets/bgca/instagram.png";
import twitter from "../../assets/bgca/twitter.png";

class Slogan extends React.Component {

  render() {
    return (
      <div>
        <div className="BottomLeftLogBackground">
          <img src={caf} alt="" id="tailleImg"/>
          <div style={{ display: "flex", width: "fit-content", margin: "0 auto" }}>
            <div style={{paddingRight: "20px"}}><p style={{ color: "white",fontFamily: "Lato" }}>Club Africain</p></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={fb} alt="" /></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={instagram} alt="" /></div>
            <div style={{ marginRight: "10px",alignSelf: "center" }}><img src={twitter} alt="" /></div>
          </div>
        </div>
      </div>
    );
    }
  }
export default Slogan;