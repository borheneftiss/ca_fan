import React, { Component } from "react";
import { compose } from "redux";
import { connect } from "react-redux";
import { Link } from "react-router-dom";
import ContentLoader from 'react-content-loader'
import "./quiz.css";
import score from "../../assets/quiz/pageIndex/logo.png";
import fan from "../../assets/quiz/questions/ic_fan.png";
import next from "../../assets/quiz/questions/next1.png";
import prev from "../../assets/quiz/questions/prev1.png";
import { getQuizResponses } from "../../store/actions";
import Headder from "../../component/Header/header.js";
import homeQuiz from "../../assets/quiz/questions/homeQuiz.png";

class Responses extends Component {
    constructor(props) {
        super(props);
        this.state = {
            currentresponse: 0,
            responseOne: false,
            responseTwo: false,
            responseThree: false,
            responseFour: false,
        }
    }  
    
     componentDidMount() { 
         this.props.getQuizResponses();
    }
   
    handlePrev = (e) => {
        
        if (this.state.currentresponse > 0)
        {  
            this.setState({ 
                currentresponse : --this.state.currentresponse,
            })
        }
    
    }
    handleNext = (e) => {
        
        let nbReponse = this.props.nbreponses; 
        let nb =parseInt(nbReponse , 10); 
        if (this.state.currentresponse < nb-1)
        {   
            this.setState({ 
                currentresponse : ++this.state.currentresponse,
            })
        }
       
    }  
    
    render() {        
        let answerOne = null;
        let answerTwo = null;
        let answerThree = null;
        let answerFour = null;
        let useransweranswerOne = null;
        let useransweranswerTwo = null;
        let useransweranswerThree = null;
        let useransweranswerFour = null; 
        let titre; 
        let suggestion =[];
        let answer;
        let useranswer;

        const { isLoading } = this.props;
        if (this.props.quiz_responses.length- 1 >=  this.state.currentresponse) 
        {
                for(let i = 0; i < this.props.quiz_responses.length;  i++ ) 
                {               
                    titre= this.props.quiz_responses[this.state.currentresponse].question ;
                    suggestion=(this.props.quiz_responses[this.state.currentresponse].suggestion) ;
                    answer = this.props.quiz_responses[this.state.currentresponse].answer ;
                    useranswer = this.props.quiz_responses[this.state.currentresponse].useranswer ; 
                    if ( useranswer === 1 )
                    { 
                        useransweranswerOne = true;
                        useransweranswerTwo = false;
                        useransweranswerThree = false;
                        useransweranswerFour = false;
                    }
                    
                    if ( useranswer === 2 )
                    { 
                        useransweranswerOne = false;
                        useransweranswerTwo = true;
                        useransweranswerThree = false;
                        useransweranswerFour = false;
                    }
                    if ( useranswer === 3 )
                    { 
                        useransweranswerOne = false;
                        useransweranswerTwo = false;
                        useransweranswerThree = true;
                        useransweranswerFour = false;
                    }
                    if ( useranswer === 4 )
                    {
                        useransweranswerOne = false;
                        useransweranswerTwo = false;
                        useransweranswerThree = false;
                        useransweranswerFour = true;
                    }
                    if ( answer === "1")
                    { 
                        answerOne = true;
                        answerTwo = false;
                        answerThree = false;
                        answerFour = false;
                    }
                    if ( answer === "2")
                    { 
                        answerOne = false;
                        answerTwo = true;
                        answerThree = false;
                        answerFour = false;
                    }
                    if ( answer === "3")
                    { 
                        answerOne = false;
                        answerTwo = false;
                        answerThree = true;
                        answerFour = false;
                    }
                    if ( answer === "4")
                    { 
                    answerOne = false;
                    answerTwo = false;
                    answerThree = false;
                    answerFour = true;
                    }                 
            }
        }
       
        return (
            <div> 
                <Headder/>
                
                {/* questions */} 
                <div style={{textAlign : "center"}} className="playQuiz" >
                    <div  className="questionsDiv">
                       <Link to="/quiz" ><img alt="" src={score} className="quizLogo" /> </Link>
                        <div className="fan">
                            <div className="btnfan">
                                <img alt="" src={fan}  className="fanImg"/>
                                <p style={{margin: "0px 0px 0px 10px"}}>{this.props.quiz_score}</p>
                            </div>
                        </div>
                    </div>

                    <div  className="questionsBG">
                    {isLoading ? (
        
                        <div  className="questionDiv">
                        <div style={{ marginLeft:"10%", marginTop: "50px"}}> 
                            <ContentLoader
                            height={200}
                            width={400}
                            >              
                            <rect x="0" y="0" rx="5" ry="5" width="350" height="35" />
                            <rect x="0" y="60" rx="5" ry="5" width="170" height="30" />
                            <rect x="180" y="60" rx="5" ry="5" width="170" height="30" />
                            <rect x="0" y="100" rx="5" ry="5" width="170" height="30" />
                            <rect x="180" y="100" rx="5" ry="5" width="170" height="30" />
                        
                            </ContentLoader> 
                        </div> 
                    </div>
                    ) : (   
                        <div  className="responseDiv">
                                <div className="questionContent">
                                    <p>{titre}  </p> 
                                </div>
                                <div className="gridResponse">                           
                                        <button 
                                        ref="btnOne"
                                        id="btnOne"
                                         
                                        style=  {{  backgroundColor : useransweranswerOne ?  '#d3d3d3': "" ,
                                                    color : useransweranswerOne ? "#e31B28" : "", 
                                                    border : useransweranswerOne ? "none" : ""
                                                }}
                                        className= { answerOne ? "activeAnswer Colquestion" : "Colquestion" }                                      
                                        >
                                        {suggestion[1]}
                                        </button>
                                
                                        <button 
                                            ref="btnTwo"
                                            id="btnTwo"
                                            style=  {{  backgroundColor : useransweranswerTwo ?  '#d3d3d3': "" ,
                                                        color : useransweranswerTwo ? "#e31B28" : "", 
                                                        border : useransweranswerTwo ? "none" : ""
                                                    }}
                                           
                                            className= { answerTwo ? "activeAnswer Colquestion" : "Colquestion" }
                                           
                                        >
                                        {suggestion[2]}
                                        </button>
                                    
                                        <button ref="btnThree" id="btnThree"
                                        
                                            style=  {{     backgroundColor : useransweranswerThree ?  '#d3d3d3': "" ,
                                                        color : useransweranswerThree ? "#e31B28" : "", 
                                                        border : useransweranswerThree ? "none" : ""
                                                    }}
                                            className= { answerThree ? "activeAnswer Colquestion" : "Colquestion" }
                                          
                                        >
                                        {suggestion[3]}
                                        </button>
                                
                                        <button  
                                            ref="btnFour" id="btnFour" 
                                            style=  {{     backgroundColor : useransweranswerFour ?  '#d3d3d3': "" ,
                                                        color : useransweranswerFour ? "#e31B28" : "", 
                                                        border : useransweranswerFour  ? "none" : ""
                                                    }}
                                            className= { answerFour ? "activeAnswer Colquestion" : "Colquestion" }
                                           
                                        >
                                        {suggestion[4]}
                                        </button>
                                        <div style={{margin : "0 auto", width: '100%'}}>
                                       
                                            <img alt="" src={prev}  className="prev"   onClick={this.handlePrev}/>
                                            <img alt="" src={next}  className="next"   onClick={this.handleNext}/>
                                        </div>
                                        <Link to="/quiz">
                                       
                                        <img alt="" src={homeQuiz} style={{width:"40px"}}  />
                                       
                                        </Link>
                                </div>
                              
                        </div>  
                       ) }
                    </div>   
                     
                </div>
                   
               
            </div>
            
        );
    }

}
const mapStateToProps = state => {
    return {    
        quiz_responses: state.quiz_responses.quiz_responses,
        quiz_score: state.quiz_score.quiz_score,
        nbreponses: state.nbreponses.nbreponses,
        isLoading: state.ui.isLoading       
    };
    
  };
const mapDispatchToProps = dispatch => {
    return {
        getQuizResponses: () => dispatch(getQuizResponses())
    };
  };
 
export default compose(
    connect(
      mapStateToProps,
      mapDispatchToProps
    )
  )(Responses);

