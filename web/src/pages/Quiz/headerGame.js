
import React, { Component } from "react";

import "./quiz.css";
import son from "../../assets/quiz/header/soundon.png";
import logoCA from "../../assets/quiz/header/logoCA.png";
import parametre from "../../assets/quiz/header/paramétre.png";
import ca from "../../assets/quiz/header/ca.png";
import fb from "../../assets/quiz/header/fb.png";
import tweeter from "../../assets/quiz/header/tweeter.png";
import insta from "../../assets/quiz/header/instagram.png";

class HeaderGame extends Component {
    render() {
    
        return (
            <div>
                <div className="headerGame">
               
                    <div className="HeaderRight">
                        <img alt="" src={logoCA} className="smallIcons" />
                        <img alt="" src={ca} className="CaSlogan"/>
                        <div className="caRS">
                            <p className="Headertxt">Club Africain</p>
                            <div>
                                <img alt="" src={fb} className="caRSimg" />
                                <img alt="" src={insta} className="caRSimg" />
                                <img alt="" src={tweeter} className="caRSimg"/>
                            </div>
                        </div>
                    </div>
                    <div> 
                        <img alt="" src={parametre} style={{ marginRight: "15px", width: "30%"}} />
                        <img alt="" src={son} className="smallIcons"/>
                    </div> 
                </div>


                <div className="headerGamemobile">
                <img alt="" src={son} className="imgMob"  />
                <img alt="" src={parametre} className="imgMob" id="params" ref="params"/>
                    
                </div> 
            </div>
    );
}

}

export default (HeaderGame);