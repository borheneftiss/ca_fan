import React, { Component } from "react";
import { time } from "../../config/config.js";
import { compose } from "redux";
import { connect } from "react-redux";
import ContentLoader from "react-content-loader";
import { Link } from "react-router-dom";
import "./quiz.css";
import quiz from "../../assets/quiz/pageIndex/logo.png";
import fan from "../../assets/quiz/questions/ic_fan.png";
import next from "../../assets/quiz/questions/next.png";
import clock from "../../assets/quiz/questions/clock.png";
import cup from "../../assets/quiz/questions/cup.png";
import { getQuizQuestions, saveResponse } from "../../store/actions";
import Modal from 'react-responsive-modal';
import CircularProgress from "@material-ui/core/CircularProgress";
import Headder from "../../component/Header/header.js"
import history from "../../history";
class Quiz extends Component {
    constructor(props) {
        super(props);
        this.state = {
            conditionOne: false,
            conditionTwo: false,
            conditionThree: false,
            conditionFour: false,
            sec: 0,
            currentquiz: 0,
            open: false,
            answer:0,
            amal: null,
            answers: [] 
          
        }
        
    }  

    componentDidMount() {
        var tokendateexpir = localStorage.getItem("tokendateexpir");
        var date = new Date(tokendateexpir * 1000);

        var now = Math.floor(new Date() / 1000);
        var datenow = new Date(now * 1000);

        if (datenow > date) {
            console.log("now > date");
            history.push("/authentification");
            localStorage.setItem("myToken", "");
        }
        else {
        }
    }
    
    OpenModal = () => {
        this.setState({ open: true });
      };
    onCloseModal = () => {
      
      }; 
    boxOneClick = (e) => {
        this.setState({
            conditionOne: !this.state.conditionOne,
            conditionTwo: false,
            conditionThree: false,
            conditionFour: false,
          });
    }
    boxTwoClick = (e) => {
       this.setState({
            conditionTwo: !this.state.conditionTwo,
            conditionOne: false,
            conditionThree: false,
            conditionFour: false   
        });
    }
    boxThreeClick = (e) => {
        this.setState({
            conditionThree: !this.state.conditionThree,
            conditionTwo: false,
            conditionOne: false,
            conditionFour: false,
         });
       
    }
    boxFourClick = (e) => {
        this.setState({
            conditionFour: !this.state.conditionFour,
            conditionTwo: false,
            conditionThree: false,
            conditionOne: false,
        });
      
    }
    
    componentWillMount() {      
        this.props.getQuizQuestions();
        this.runCount()       
    }
    SaveResponses = (e) => {
       
        if( this.props.isPlayed !== true){
        let question_Ids = JSON.parse(this.props.QuestionsIds) ;
        let quizID = localStorage.getItem('quizID');
        var jsonObj = {};
        var count=question_Ids.length;
        for( let i=0; i<count; i++){
            
            var question_Id = question_Ids[i];
            var answer = this.state.answers[i];
            jsonObj[question_Id] = answer ;
        
        }

       var  obj = {
            "quizid":quizID,
            "answers":jsonObj
        }; 
        
        var response = JSON.stringify(obj);
        const data = {
            token: localStorage.getItem('myToken'),
            answer: response
          }
    
        this.props.saveResponse(data);
        }   
    }
     
    restartCount(){
    
        let nbQustion = this.props.nbrQuestions ; 
        const Timing=Date.now() + time ;
        if(nbQustion- 1 >  this.state.currentquiz)
        {   
                this.setState({ 
                    currentquiz : ++this.state.currentquiz,
                    conditionOne : false,
                    conditionTwo : false,
                    conditionThree : false,
                    conditionFour : false,

                 })
                this.interval = setInterval(() => {
                const date = this.calculateCountdown(Timing);
                date ? this.setState(date) : this.stop();
                }, 1000);
        }
        else
        {
            this.SaveResponses();
            this.OpenModal()
      
        }
    }
    calculateCountdown(endDate) {
        let diff = (Date.parse(new Date(endDate)) - Date.parse(new Date())) / 1000;
        // clear countdown when date is reached
        if (diff < 0) return false;
        const timeLeft = { sec: 0 };
        // calculate time difference between now and expected date
        timeLeft.sec = diff;
        return timeLeft;
    }

    stop() { 
        var current_answer=0;
        if (this.state.conditionOne === true) {
            current_answer=1;
           
        }
        else if (this.state.conditionTwo === true) {
            current_answer=2;
            
        }
        else if (this.state.conditionThree === true) {
            
            current_answer=3;
            
        }

        else if (this.state.conditionFour === true) {
            current_answer=4;
            
        }
        else {
            current_answer=-1;
            
        }
        
        this.setState({ 
            answer : current_answer 
            })
     
        var newArray = this.state.answers;
        newArray.push(current_answer); 
        this.setState({
           answers: newArray
           
          }); 
        
        clearInterval(this.interval); 
        this.restartCount();
      

    }
  
    addLeadingZeros(value ) {
       
       value = String(value);
        while (value.length < 2) {
          value = '0' + value;
         }
      
        return value;
       
    }
    runCount(){
       
        const Timing=Date.now() + time; 
        // update every second
        this.interval = setInterval(() => {
        const date = this.calculateCountdown(Timing);
        date ? this.setState(date) : this.stop();
        }, 1000); 
    }
    
    nextQuestion = (e) => {
        let nbQustion = this.props.nbrQuestions ; 
        if(nbQustion-1  >=  this.state.currentquiz)
        {   
            this.stop();    
        }
    
    }
     
    render() {        
        const countDown = this.state;
        const { isLoading ,isLoadingBtn  } = this.props;
        const counter = (
            <div className="Countdown">  
                <span className="Count" >
                    {this.addLeadingZeros(countDown.sec)}        
                </span>
            </div>
        )
        let nextBtn = (
            <div style={{margin : "0 auto", width:"20%",  cursor: "pointer"}}>
               <img alt="" src={next}  style={{ width: "30px"}} onClick={this.nextQuestion}/>
            </div>
        )
        if (isLoadingBtn) {            
            nextBtn =   <div style={{margin : "0 auto", width:"20%",  cursor: "pointer"}}>
                            <CircularProgress size={20} />
                        </div>;
          }
        let titre; 
        let suggestion =[];
        if (this.props.list_questions.length- 1 >=  this.state.currentquiz) 
        {
                for(let i = 0; i < this.props.list_questions.length;  i++ ) 
                {
                    titre= this.props.list_questions[this.state.currentquiz].question ;
                    suggestion=(this.props.list_questions[this.state.currentquiz].suggestion) ;
            
                } 
            }
          
        return (
            <div> 
                <Headder/>
                <div id="modal">
                                <Modal open={this.state.open} onClose={this.onCloseModal} center>
                                    <div className="modalContent">
                                        <img alt="" src={quiz} className="startQuiz" />
                                        <img alt="" src={cup} className="cupQuiz" />
                                        <p className="statesWin" style={{color:"#e31B28"}}>BRAVO!</p>
                                        <p className="statesWin">Vous avez {this.props.get_points.rightanswers} bonnes réponses sur {this.props.get_points.allquestions} </p>
                                        <p className="statesPoints">Vous venez d'obtenir {this.props.get_points.quizscore} points CA FAN</p>
                                        <Link to="/quiz" style={{ textDecoration: "none"}} className="btncontinue">
                                            <p>Continuer</p>
                                        </Link>
                                    </div>
                                </Modal>
                              
                </div>
                
                {/* questions */} 
                <div style={{textAlign : "center"}} className="playQuiz">
                    <div  className="questionsDiv">
                        <Link to="/quiz" ><img alt="" src={quiz} className="quizLogo" /> </Link>
                        <div className="fan">
                            <div className="btnfan">
                                <img alt="" src={fan}  className="fanImg"/>
                                <p style={{margin: "0px 0px 0px 10px"}}>{this.props.score}</p>
                            </div>
                        </div>
                    </div>
                    {(this.props.isPlayed ==="true") ? <div style={{height: 400, paddingTop: "70px"}}>  <span style={{
                          color: "white",
                          fontFamily: "Lato",
                          fontSize: "20px"
                            }}>
                            Ce quiz s'est déjà joué !!
                            </span> </div> : 
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
                      <div  className="questionDiv">
                       
                            <div  id="playCountdown" ref="playCountdown" className="Countdown"> 
                                <img alt="" src={clock} className="clock" ref="clock"/>
                                {counter}  
                            </div>
                       
                            <div> 
                            
                                <div className="questionContent">
                                    <p> {titre} </p> 
                                </div>
                                <div className="gridQuiz">                           
                                        <button 
                                            
                                            className= { this.state.conditionOne ? "activeAnswer Colquestion" : "NotActiveAnswer Colquestion" }
                                            onClick={this.boxOneClick}
                                            >
                                            {suggestion[1]}
                              
                                        </button>
                                
                                        <button 
                                            
                                            className= { this.state.conditionTwo ? "activeAnswer Colquestion" : "NotActiveAnswer Colquestion" }
                                            onClick={this.boxTwoClick}>
                                            {suggestion[2]}
                                        </button>
                                    
                                        <button 
                                           
                                            className= { this.state.conditionThree ? "activeAnswer Colquestion" : "NotActiveAnswer Colquestion" }
                                            onClick={this.boxThreeClick}>
                                             {suggestion[3]}
                                        </button>
                                
                                        <button  
                                            
                                            className= { this.state.conditionFour ? "activeAnswer Colquestion" : "NotActiveAnswer Colquestion" }
                                            onClick={this.boxFourClick}>
                                             {suggestion[4]}
                                        </button>
                                      {nextBtn}
                                </div>
                              
                            </div>  
                     
                    </div>   
                        ) }
                    </div>
                    }
                </div>
            </div>
            
        );
    }

}
const mapStateToProps = state => {
    return {    
        list_questions: state.list_questions.list_questions,
        isPlayed: state.isPlayed.isPlayed,
        nbrQuestions: state.nbrQuestions.nbrQuestions,
        score: state.score.score,
        QuestionsIds: state.QuestionsIds.QuestionsIds,
        get_points: state.get_points.get_points,
        isLoading: state.ui.isLoading  ,    
        isLoadingBtn: state.uiBtn.isLoadingBtn       
    };
    
  };
const mapDispatchToProps = dispatch => {
    return {
        getQuizQuestions: () => dispatch(getQuizQuestions()),
        saveResponse: (data) => dispatch(saveResponse(data)),
        
    };
  };
 
export default compose(
    connect(
      mapStateToProps,
      mapDispatchToProps
    )
  )(Quiz);

