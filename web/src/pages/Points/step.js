import React, { Component } from "react";
import Steps from 'awesome-steps'
import 'awesome-steps/dist/style.css'
import "./step.css";
import solution from "../../assets/mes_points/right.png";
import { connect } from "react-redux";
import { historiquepoints } from "../../store/actions"; 
import * as moment from "moment";
import 'moment/locale/fr';
class Step extends Component {
    componentDidMount() {
        const data = {
            token: localStorage.getItem("myToken")
          }
        this.props.historiquepoints(data);
    }
    
    render() {
        
        return (
            <div className="stepper">
           
                <Steps className="StepsBloc" labelPlacement={"vertical"} direction={"horizontal"} size="small" >
                
                    {this.props.datahistoric.map(datahistoric => (
                   
                        <Steps.Step  title={<div className="dateStepper"><p className="word">{moment(datahistoric["date"]).format("DD MMM")}</p><p className="years">{moment(datahistoric["date"]).format("YYYY")}</p> </div>} upperTitle={datahistoric["score"] + ' POINTS' } description={datahistoric["game"]} key={datahistoric.ID} />
                    ))}
                <Steps.Step  icon={<img alt="" src={solution} className="finish"/>} />
            
                </Steps>
            </div>
         
        );
    }
}
const mapStateToProps = state => {
    return {
    historicResult: state.historicResult.historicResult,
    datahistoric: state.datahistoric.datahistoric,
    
    };
  };

const mapDispatchToProps = dispatch => {
    return {
        historiquepoints: (token)=>dispatch(historiquepoints(token))
    };
  };


Step = connect(
    mapStateToProps,
    mapDispatchToProps
  )(Step);

export default (Step);