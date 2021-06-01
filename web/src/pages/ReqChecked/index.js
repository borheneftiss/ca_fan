import React, { Component } from "react";
//import './ReqChecked.css';
import ckeck from '../../assets/iconpaiement/check.png'
import Card from '@material-ui/core/Card';

class ReqChecked extends Component {
    render() {
        return(
        <Card className="cardStyle">
        <div className="flex-Check">
            <div> <img style={{width:'80px', 'margin-top':'25%'}} src={ckeck} alt=""/></div>
            <div>
                <p>Votre demande de carte fidélité a été envoyé !</p>
            </div>
            <div>
                <p style={{color: '#282c34','font-weight': 'lighter'}}>Vous serez notifié une fois votre carte soit prête ! Merci pour votre attension</p>
            </div>  
        </div>
        </Card>
        )
    }
}

export default ReqChecked;