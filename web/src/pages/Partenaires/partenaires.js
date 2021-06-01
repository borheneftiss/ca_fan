import React from "react";
import "./partenaires.css";

import { connect } from "react-redux";
import Headder from "../../component/Header/header.js";
import { getPartners } from "../../store/actions";

import Footer from "../../component/footer/footer.js";
import history from "../../history";
import ContentLoader from 'react-content-loader'

class Partenaires extends React.Component {

  componentDidMount() {
   
    var tokendateexpir = localStorage.getItem("tokendateexpir");
    var date = new Date(tokendateexpir * 1000);

    var now = Math.floor(new Date() / 1000);
    var datenow = new Date(now * 1000);

    if (datenow > date) {
        console.log("now > date");
        history.push("/authentification");
    }
    else {
      this.props.getPartners();
    }
}
  render() {
    const { isLoading } = this.props;
    return (
      <div>
        <Headder/>
        <div className="challengesTxt">
                    <p className="pointText">Nos partenaires Officiels</p>
                
        </div>
        {isLoading ? (  <div style={{marginLeft:"30%", marginTop: "80px"}}> 
                      <ContentLoader
                      height={100}
                      width={400}
                      speed={1}
                      >

                      <rect x="0" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="60" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="120" y="0" rx="5" ry="5" width="50" height="50" />
                      <rect x="180" y="0" rx="5" ry="5" width="50" height="50" />
                    
                      </ContentLoader> 
                    </div>
                    ) :  
                    <div className="partnerRow">
     
                    
                    {this.props.DataPartenaires.map(DataPartenaires => {
                        return DataPartenaires["title"] ===  "ooredoo" ?
                          <div className="Colpartner" key={DataPartenaires.ID}>
                          <a href="/points#indentifier" style={{textDecoration: 'none'}}>
                            <div className="Colpartner-Top">
                                <img alt="" src={DataPartenaires["logo"]} className="partnerImg"/>
                            </div>
                            <div className="Colpartner-Bottom">
                              <p>Voir cadeaux</p>
                            </div>
                            </a>
                          </div>
                        :
                          <div className="Colpartner" key={DataPartenaires.ID}>
                            
                            <div className="Colpartner-Top">
                                <img alt="" src={DataPartenaires["logo"]} className="partnerImg"/>
                          
                            </div>
                            <div className="Colpartner-Bottom">
                              <p>Voir cadeaux</p>
                            </div>
                          </div>
                    })}
                      
                    </div> 
        }
        
        
        <div>
         <Footer/> 
        </div>
      </div>
      
    );
    }
  }
  const mapStateToProps = state => {
    return {
      isLoading: state.ui.isLoading,
      DataPartenaires: state.DataPartenaires.DataPartenaires,
      ResultPartenaires:state.ResultPartenaires.ResultPartenaires
      
    };
};
  const mapDispatchToProps = dispatch => {
    return {
      getPartners:()=>dispatch(getPartners())  
    };
  };




Partenaires = connect(
    mapStateToProps,
    mapDispatchToProps
  )(Partenaires);
export default (Partenaires);
